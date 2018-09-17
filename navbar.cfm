<!-- Navbar v1.0 -->

<nav class="navbar pull-right">

	<!-- Begin toggle button (get grouped for better mobile display) -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav-main" aria-expanded="false">
		  <span class="sr-only">Toggle navigation</span>
		  <span class="icon-bar"></span>
		  <span class="icon-bar"></span>
		  <span class="icon-bar"></span>
		</button>
	</div>
	<!-- End toggle button-->

	<!-- Begin nav main
	====================
	* Use class "nav-separator" to enable nav links separators.
	* Use class "nav-uppercase" to enable nav uppercase letters.
	* Use class "mob-navbar-collapse-dark" to enable dark mobile menu.
	* Use class "mob-navbar-align-center" to enable dark mobile menu.
	* Note-1: class "mlc" in menu links = close mobile menu when clicking menu link (for one page template version only).
	* Note-2: class "sm-scroll" in menu links = enable smooth scrolling when clicking menu link (for one page template version only).
	-->
	<div id="nav-main" class="collapse navbar-collapse mob-navbar-collapse-dark">

		<!-- Begin navbar-nav 
		======================
		* Use class "nav-pills" to enable nav pills.
		* Use class "pills-rounded", "pills-rounded-2x", "pills-rounded-3x" or "pills-rounded-4x" for rounded pills (class "nav-pills" is required).
		* Use class "pills-gradient" to enable gradient pills (class "nav-pills" is required).
		* Use class "nav-border-bottom" to enable menu links with bottom border (class "nav-pills" is required).
		-->
		<ul class="nav navbar-nav navbar-right nav-pills pills-rounded">
			
			<li class="active"><a class="mlc sm-scroll" href="#intro">Home</a></li>
			<li><span class="nav-link-separator">/</span></li>

			<!-- Begin dropdown 
			====================
			* Use class "dropdown-hover" to make navigation toggle on desktop hover.
			* Use class "dropdown-uppercase" to enable dropdown menu uppercase letters.
			* Use class "dropdown-menu-dark" to enable dark dropdown menu.
			* Use class "dropdown-menu-color" to enable custom colored dropdown menu.
			* Use class "dropdown-menu-right" to right align the dropdown menu.
			-->
			<li class="dropdown dropdown-menu-dark dropdown-hover">
				<a href="#0" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
					About<span class="caret-2"><i class="fa fa-angle-down"></i></span>
				</a>
				<ul class="dropdown-menu">
					<li><a class="mlc sm-scroll" href="#section-1">About bit15</a></li>
					<li><a class="mlc sm-scroll" href="#section-10">Clients</a></li>

				</ul> <!-- /.dropdown-menu -->
			</li>
			<!-- End dropdown -->

			<li><span class="nav-link-separator">/</span></li>
			<li><a class="mlc sm-scroll" href="#section-2">Services</a></li>
			<!--- <li><span class="nav-link-separator">/</span></li> --->
			<!--- <li><a class="mlc sm-scroll" href="#section-3">Portfolio</a></li> --->
			<li><span class="nav-link-separator">/</span></li>
			<li><a class="mlc sm-scroll" href="#section-4">Pricing</a></li>
			<li><span class="nav-link-separator">/</span></li>
			<li><a class="mlc sm-scroll" href="#section-8">Contact</a></li>

		</ul>
		<!-- End navbar-nav -->

	</div>
	<!-- End nav main -->

</nav>

<!-- Error Modal -->
<div class="modal fade" id="errorModal" role="dialog">
  <div class="modal-dialog">
  
    <!-- Modal content-->
    <div class="modal-content">
    	<cfparam name="errorCode" default="500" />
    	<cfparam name="errorMsg" default="Internal Server Error. Operation failed for an unknown reason." />
    	<cfif StructKeyExists(URL, "error")>
				<cfif URL.error NEQ "">
    			<cfset errorCode = URL.error />
				</cfif>
				<cfif errorCode EQ 403>
					<cfset errorMsg = "The Email/Password combination provided is not right. Please try again, or request a change of password." />
				<cfelseif errorCode EQ 401>
					<cfparam name="errorPage" default="undetermined" />
					<cfif StructKeyExists(URL, "page")>
						<cfset errorPage = URL.page />
					</cfif>
					<cfset errorMsg = "The requested template (" & errorPage & ") was not found. If you think this is a server error, please contact support." />
				</cfif>
    	</cfif>
    	<cfoutput>
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <h4 class="modal-title">Error #errorCode#!</h4>
	      </div>
	      <div class="modal-body">
	        <p>#errorMsg#</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
    </cfoutput>
  </div>
</div>