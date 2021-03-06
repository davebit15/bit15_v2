﻿<!--- 
* Use class "angle-left-top", "angle-right-top", "angle-left-bottom", "angle-right-bottom" to change section angle.
* Use class "bg-image-fixed" to make background image fixed (otherwise use class "bg-image").
* Use class "bg-image-parallax" to enable background image parallax effect (otherwise use class "bg-image").
* Use class "bg-pattern" if you use background patterns (example: http://subtlepatterns.com/). Combine with class "bg-image-fixed".
--->
<section id="section-7" class="testimonials-section bg-dark angle-right-top angle-left-bottom bg-image-parallax" style="background-image: url(assets/img/misc/bg-3.jpg);">

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
				<div class="heading heading-md heading-hover text-white wow fadeIn">
					<span class="heading-title-ghost">Testimonials</span>
					<h2 class="heading-title">Testimonials</h2>

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

	<div class="container">
		<div class="row wow fadeIn" data-wow-delay="0.3s">
			<div class="col-md-12">

				<!-- Begin testimonials
				========================
				* Use class "tm-hide-image" to hide testimonial image.
				* Use class "tm-center" or "tm-right" to align testimonials.
				-->
				<div class="testimonial-wrap">

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
					<div class="owl-carousel testimonial-carousel dots-outside text-white" data-items="1" data-loop="true">

						<!-- Begin testimonial item -->
						<div class="testimonial-item text-gray-2">
							<img src="assets/img/testimonial/client-1.png" alt="image">
							<blockquote>
								<p>"Duis vel ligula non neque varius eleifend quis id elit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse lacus dui, pellentesque ut porta et, consequat sit amet suscipit lacus."</p>
								<small>Anna Clarkson</small>
							</blockquote>
						</div>
						<!-- End testimonial item -->

						<!-- Begin testimonial item -->
						<div class="testimonial-item text-gray-2">
							<img src="assets/img/testimonial/client-2.png" alt="image">
							<blockquote>
								<p>"Maecenas sit amet diam iaculis, lobortis tortor sed, bibendum quam. Nam mauris odio, sodales interdum facilisis in, dignissim et massa. In suscipit quam nisi."</p>
								<small>John Smith</small>
							</blockquote>
						</div>
						<!-- End testimonial item -->

						<!-- Begin testimonial item -->
						<div class="testimonial-item text-gray-2">
							<img src="assets/img/testimonial/client-3.png" alt="image">
							<blockquote>
								<p>"Proin at tincidunt leo. Morbi ut metus sit amet purus molestie sollicitudin. Maecenas convallis est vitae neque feugiat, in accumsan odio vestibulum. Pellentesque sodales fermentum porttitor."</p>
								<small>Jack Paterson</small>
							</blockquote>
						</div>
						<!-- End testimonial item -->
						
					</div>
					<!-- End testimonials carousel -->

				</div>
				<!-- End testimonials -->

			</div> <!-- /.col -->
		</div> <!-- /.row -->
	</div> <!-- /.container -->

</section>