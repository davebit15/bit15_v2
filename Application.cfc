<!--- bit15, 2016 --->

<cfcomponent output="false">
	
	<!--- Application name, should be unique --->
	<cfset this.name = "bit15_" & hash(getCurrentTemplatePath())>
	<!--- How long application vars persist --->
	<cfset this.applicationTimeout = createTimeSpan(0,0,50,0)>
	<!--- Should client vars be enabled? --->
	<cfset this.clientManagement = false>
	<!--- Where should we store them, if enable? --->
	<cfset this.clientStorage = "cookie">
	<!--- Where should cflogin stuff persist --->
	<cfset this.loginStorage = "session">
	<!--- Should we even use sessions? --->
	<cfset this.sessionManagement = true>
	<!--- How long do session vars persist? --->
	<cfset this.sessionTimeout = createTimeSpan(0,0,30,0)>
	<!--- Should we set cookies on the browser? --->
	<cfset this.setClientCookies = true>
	<!--- should cookies be domain specific, ie, *.foo.com or www.foo.com --->
	<cfset this.setDomainCookies = false>
	<!--- should we try to block 'bad' input from users --->
	<cfset this.scriptProtect = "none">
	<!--- should we secure our JSON calls? --->
	<cfset this.secureJSON = false>
	<!--- Should we use a prefix in front of JSON strings? --->
	<cfset this.secureJSONPrefix = "">
	<!--- Used to help CF work with missing files and dir indexes --->
	<cfset this.welcomeFileList = "">
	<!--- Enable CF Debugging output --->
	<cfsetting requesttimeout="20" showdebugoutput="false" enablecfoutputonly="false" />
	
	<!--- define custom coldfusion mappings. Keys are mapping names, values are full paths  --->
	<cfset this.mappings = structNew()>
	<cfset this.mappings["/root"] = getDirectoryFromPath(getCurrentTemplatePath()) />
	
	<!--- define a list of custom tag paths. --->
	<cfset this.customtagpaths = "">
	
	<!--- Run when application starts up --->
	<cffunction name="onApplicationStart" returnType="boolean" output="false">
		
		<cfset Application.dsn = "bit15" />
		<cfset Application.cfservices = "assets.cfc.b15" />
		<cfset Application.contactEmail = "contact@bit15.com" />
		<cfset Application.adminEmail = "david@bit15.com" />
		
		<cfset Application.sessions = 0 />
		
		<cfreturn true>
	</cffunction>

	<!--- Run when application stops --->
	<cffunction name="onApplicationEnd" returnType="void" output="false">
		<cfargument name="applicationScope" required="true">
	</cffunction>

	<!--- Fired when user requests a CFM that doesn't exist. --->
	<cffunction name="onMissingTemplate" returnType="boolean" output="false">
		<cfargument name="targetpage" required="true" type="string">
		<cflocation url="index.cfm?error=#Arguments.targetpage#" addToken="false" /> <!--- Trigger 404 error modal in index.cfm --->
		<cfreturn true>
	</cffunction>
	
	<!--- Run before the request is processed --->
	<cffunction name="onRequestStart" returnType="boolean" output="false">
		<cfargument name="thePage" type="string" required="true">
		
		<cfsetting showdebugoutput="false" /> <!--- Define request settings. --->
		
    <cfset local = {} /> <!--- Define the local scope. --->
		<cfset local.basePath = getDirectoryFromPath(getCurrentTemplatePath()) /> <!--- Root folder path (Path to the folder this template is located) --->
    <cfset local.targetPath = getDirectoryFromPath(expandPath(arguments.thePage)) /> <!--- Get the target (script_name) directory path based on expanded script name. --->
		<cfset local.requestDepth = (listLen( local.targetPath, "\/" ) - listLen( local.basePath, "\/" )) /> <!--- Difference in path --->
		<cfset request.webRoot = repeatString("../", local.requestDepth) /> <!--- Relative path to root of the requested template --->
			
		<cfreturn true>
	</cffunction>

	<!--- Runs before request as well, after onRequestStart --->
	<!--- 
	WARNING!!!!! THE USE OF THIS METHOD WILL BREAK FLASH REMOTING, WEB SERVICES, AND AJAX CALLS. 
	DO NOT USE THIS METHOD UNLESS YOU KNOW THIS AND KNOW HOW TO WORK AROUND IT!
	EXAMPLE: http://www.coldfusionjedi.com/index.cfm?mode=entry&entry=ED9D4058-E661-02E9-E70A41706CD89724
	--->
	<cffunction name="onRequest" returnType="void">
		<cfargument name="thePage" type="string" required="true">
		<cfinclude template="#arguments.thePage#">
	</cffunction>

	<!--- Runs at end of request --->
	<cffunction name="onRequestEnd" returnType="void" output="false">
		<cfargument name="thePage" type="string" required="true">
	</cffunction>

	<!--- Runs on error --->
	<cffunction name="onError" returnType="void" output="false">
		<cfargument name="exception" required="true">
		<cfargument name="eventname" type="string" required="true">
		<cfdump var="#arguments#"><cfabort>
	</cffunction>

	<!--- Runs when your session starts --->
	<cffunction name="onSessionStart" returnType="void" output="false">	
	
		<cfscript>
		
			SESSION.Started = #Now()#;
			SESSION.UserIP = "#CGI.REMOTE_ADDR#";
			SESSION.UserAgent = "#CGI.http_user_agent#";
			SESSION.Referer = "#CGI.http_referer#";
			SESSION.LoginData = StructNew();
			SESSION.LoginData.Logged = 0;
			SESSION.LoginData.ID = 0;
			SESSION.LoginData.Username = "";
			SESSION.LoginData.AccessLevel = 0;
			try{
				if(isDefined(COOKIE.LoginInfo) AND #COOKIE.LoginInfo# NEQ 0)
				{
					SESSION.LoginData.Logged = true;
					SESSION.LoginData.ID = COOKIE.LoginInfo;
				}
			}
			catch (any e) {
				/* Do nothing */
			};

		</cfscript>
		
 	
		<cflock scope="Application" timeout="5" type="Exclusive">
		
			<cfset Application.sessions = Application.sessions + 1 />
			
		</cflock>
	</cffunction>

	<!--- Runs when session ends --->
	<cffunction name="onSessionEnd" returnType="void" output="false">
		<cfargument name="SessionScope" required=true />
		<cfargument name="AppScope" required=true />
		
		<cfquery name="recordSession" datasource="#Arguments.AppScope.dsn#">
			INSERT stats (sessionUserIP, sessionUserName, sessionStartTime, sessionEndTime, sessionAppName, sessionURLToken, sessionUserAgent, sessionReferer)
			VALUES ('#Arguments.SessionScope.UserIP#', '#Arguments.SessionScope.LoginData.Username#', #Arguments.SessionScope.Started#, #Now()#, '#Arguments.AppScope.applicationname#', '#Arguments.SessionScope.URLToken#', '#Arguments.SessionScope.UserAgent#', '#Arguments.SessionScope.Referer#')
		</cfquery>
		
		<cflock name="AppLock" timeout="5" type="Exclusive"> 
			<cfset Arguments.AppScope.sessions = Arguments.AppScope.sessions - 1 />  
		</cflock>
	</cffunction>
</cfcomponent>