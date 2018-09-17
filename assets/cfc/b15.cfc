<cfcomponent>

	<cffunction name="init" access="public" output="false" returntype="any">
		
		<cfscript>
			
			return this;
			
		</cfscript>

	</cffunction>

	<cffunction name="sendMail" access="remote" output="false" returnFormat="plain" returntype="string">
		
		<cfset return_struct[1] = "success" />
		<cfset return_struct[2] = "" />
		
		<cftransaction>
		
			<cftry>
			
				<cfmail to="#Application.contactEmail#" from="#Application.adminEmail#" type="html" subject="#FORM.Subject#" replyto="#FORM.Email#">
					<cfif IsDefined("FORM.Name") AND #FORM.Name# NEQ "">
					Email from <cfoutput>#FORM.Name#</cfoutput>.
					</cfif>
					<p>#FORM.Message#</p>
				
				</cfmail>
				
				<cfcatch type="any">
					
					<cfif isDefined('cfcatch.ErrorCode') AND isDefined('cfcatch.Message')>
						<cfset return_struct[1] = cfcatch.ErrorCode />
						<cfset return_struct[2] = cfcatch.Message />
					</cfif>	
			
				</cfcatch>
			
			</cftry>
		
		</cftransaction>
		
		<cfreturn SerializeJSON(return_struct) />
		
	</cffunction>

</cfcomponent>