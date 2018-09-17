<!---
* Use class "angle-left-top", "angle-right-top", "angle-left-bottom", "angle-right-bottom" to change section angle.
* Use class "bg-image-fixed" to make background image fixed (otherwise use class "bg-image").
* Use class "bg-image-parallax" to enable background image parallax effect (otherwise use class "bg-image").
* Use class "bg-pattern" if you use background patterns (example: http://subtlepatterns.com/). Combine with class "bg-image-fixed".
--->
<section id="section-4" class="prices-section bg-dark <!--- angle-right-top ---> angle-left-bottom bg-image-parallax" style="background-image: url(assets/img/misc/bg-2.jpg);">

	<!-- Element cover
	===================
	* Use background transparent color classes for colored opacity (example: "bg-transparent-6-dark", "bg-transparent-8-5-red" ... 1 to 95). Look into "helper.css" file for more info.  
	-->
	<span class="cover bg-transparent-9-5-dark"></span>

	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<!--- Begin heading 
				===================
				* Use class "heading-center" or "heading-right" to align heading.
				* Use class "heading-xs", "heading-sm", "heading-md", "heading-md" or "heading-xlg" to shange heading size.
				* Use class "heading-hover" to enable heading hover effect.
				* Use class "heading-uppercase" to enable uppercase letters.
				--->
				<div class="heading heading-md text-white heading-hover wow fadeIn">
					<span class="heading-title-ghost">Pricing</span>
					<h2 class="heading-title">Pricing</h2>

					<!--- Begin divider 
					===================
					* Use class "hr-width-1", "hr-width-2" -> up to "hr-width-10" to shange divider width.
					* Use class "hr-1x", "hr-2x", "hr-3x", "hr-4x" or "hr-5x" to shange divider size.
					* Use class "hr-dotted", "hr-dashed" or "hr-double" to shange divider style.
					--->
					<hr class="hr-width-1 hr-5x border-main">
					<!-- End divider -->

				</div>
				<!-- End heading -->

			</div> <!-- /.col -->
		</div> <!-- /.row -->
	</div> <!-- /.container -->

	<div class="container wow fadeIn">
		<div class="row">
			<div class="col-md-4">

				<!-- Begin info box-4 -->
				<div class="info-box info-box-4 info-box-white wow fadeIn">
					<span class="info-box-icon rounded-icon bg-main text-white"><i class="fa fa-usd"></i></span>
					<div class="info-box-info">
						<h4 class="info-box-title">Competitive pricing</h4>
						<p class="info-box-text text-gray-2">
							In design, development and hosting, you won't find a better deal.
						</p>
					</div>
				</div>
				<!-- End info box-4 -->

			</div> <!-- /.col -->

			<div class="col-md-4">

				<!-- Begin info box-4 -->
				<div class="info-box info-box-4 info-box-white wow fadeIn" data-wow-delay="0.2s">
					<span class="info-box-icon rounded-icon bg-main text-white"><i class="fa fa-diamond"></i></span>
					<div class="info-box-info">
						<h4 class="info-box-title">Great craftmanship</h4>
						<p class="info-box-text text-gray-2">
							When it comes to great quality, the devil is in the details...
						</p>
					</div>
				</div>
				<!-- End info box-4 -->

			</div> <!-- /.col -->

			<div class="col-md-4">

				<!-- Begin info box-4 -->
				<div class="info-box info-box-4 info-box-white wow fadeIn" data-wow-delay="0.4s">
					<span class="info-box-icon rounded-icon bg-main text-white"><i class="fa fa-clock-o"></i></span>
					<div class="info-box-info">
						<h4 class="info-box-title">Time matters</h4>
						<p class="info-box-text text-gray-2">
							No excuses, no extending deadlines: it will be ready in the timeframe we set.
						</p>
					</div>
				</div>
				<!-- End info box-4 -->

			</div> <!-- /.col -->

		</div> <!-- /.row -->
	</div> <!-- /.container -->

	<!-- Begin prices -->
	<div class="prices wow fadeIn" data-wow-delay="0.6s">
		<div class="container">

			<!--- Begin content carousel (http://www.owlcarousel.owlgraphic.com)
			====================================================================
			* Use class "nav-outside" for outside nav.
			* Use class "nav-outside-top" for outside top nav.
			* Use class "nav-rounded" for rounded nav.
			* Use class "dots-outside" for outside dots.
			* Use class "dots-left" or "dots-right" to align dots.
			* Use class "dots-rounded" for rounded dots.
			* Available carousel data attributes:
					data-items="5".......................(items visible on desktop)
					data-tablet-landscape="4"............(items visible on mobiles)
					data-tablet-portrait="3".............(items visible on mobiles)
					data-mobile-landscape="2"............(items visible on tablets)
					data-mobile-portrait="1".............(items visible on tablets)
					data-loop="true".....................(true/false)
					data-margin="10".....................(space between items)
					data-center="true"...................(true/false)
					data-start-position="0"..............(item start position)
					data-animate-in="fadeIn".............(more animations: http://daneden.github.io/animate.css/)
					data-animate-out="fadeOut"...........(more animations: http://daneden.github.io/animate.css/)
					data-mouse-drag="false"..............(true/false)
					data-touch-drag="false"..............(true/false)
					data-autoheight="true"...............(true/false)
					data-autoplay="true".................(true/false)
					data-autoplay-timeout="5000".........(milliseconds)
					data-autoplay-hover-pause="true".....(true/false)
					data-autoplay-speed="800"............(milliseconds)
					data-drag-end-speed="800"............(milliseconds)
					data-lazy-load="true"................(true/false)
					data-nav="true"......................(true/false)
					data-nav-speed="800".................(milliseconds)
					data-dots="false"....................(true/false)
					data-dots-speed="800"................(milliseconds)
			--->
			<div class="owl-carousel prices-carousel dots-outside nav-outside-top" data-items="3" data-margin="15" data-nav="true" data-tablet-landscape="3" data-tablet-portrait="3" data-mobile-landscape="2" data-mobile-portrait="1">
				
				<!-- Begin price box 
				======================
				* Use class "price-box-dark" for dark style.
				-->
				<div class="price-box price-box-dark">
					<div class="pr-box price-heading">
						<i class="fa fa-image"></i>
						<h3 class="price-title">Website</h3>
						<div class="price-heading-text">Landing Page</div>
					</div>
					<div class="pr-box price-box-price">
						<div class="price-tenure text-left">from</div>
						<div class="price"><span class="price-currency">$</span>390</div>
						<div class="price-tenure">Including one year hosting</div>
					</div>
					<div class="pr-box price-features">
						<ul class="list-unstyled">
							<li>One-page website</li>
							<li>Up to 10 sections</li>
							<li>Search engine optimized</li>
							<li>100% responsive layouts</li>
						</ul>
					</div>
					<div class="pr-box price-footer">
						<a href="#section-8" class="btn btn-white-bordered btn-rounded">Get more info...</a>
					</div>
				</div>
				<!-- End price box -->
				
				<!-- Begin price box 
				======================
				* Use class "price-box-dark" for dark style.
				-->
				<div class="price-box price-box-featured price-box-dark">
					<div class="price-box-ribbon">Great Value!</div>
					<div class="pr-box price-heading">
						<i class="fa fa-newspaper-o fa-2x"></i>
						<h3 class="price-title">Website</h3>
						<div class="price-heading-text">Full multi-section</div>
					</div>
					<div class="pr-box price-box-price">
						<div class="price-tenure text-left">from</div>
						<div class="price"><span class="price-currency">$</span>690</div>
						<div class="price-tenure">Including one year hosting</div>
					</div>
					<div class="pr-box price-features">
						<ul class="list-unstyled">
							<li>Multiple pages</li>
							<li>Up to 20 sections</li>
							<li>Full database support</li>
							<li>Full content-management</li>
						</ul>
					</div>
					<div class="pr-box price-footer">
						<a href="#section-8" class="btn btn-white-bordered btn-rounded">Get more info...</a>
					</div>
				</div>
				<!-- End price box -->
				
				<!-- Begin price box (featured)
				=================================
				* Use class "price-box-dark" for dark style.
				-->
				<div class="price-box price-box-dark">
					<div class="pr-box price-heading">
						<i class="fa fa-server"></i>
						<h3 class="price-title">Hosting</h3>
						<div class="price-heading-text">Website and mail servers</div>
					</div>
					<div class="pr-box price-box-price">
						<div class="price-tenure text-left">from</div>
						<div class="price"><span class="price-currency">$</span>76.00</div>
						<div class="price-tenure">Per Year</div>
					</div>
					<div class="pr-box price-features">
						<ul class="list-unstyled">
							<li>Linux/Windows</li>
							<li>ColdFusion/PHP</li>
							<li>mySQL/MS SQL</li>
							<li>24/7 Support</li>
						</ul>
					</div>
					<div class="pr-box price-footer">
						<a href="#section-8" class="btn btn-white-bordered btn-rounded">Get more info...</a>
					</div>
				</div>
				<!-- End price box -->
				
			</div>
			<!-- End prices carousel -->

		</div> <!-- /.container -->
	</div>
	<!-- End prices -->

</section>