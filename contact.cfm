﻿<!--- 
* Use class "angle-left-top", "angle-right-top", "angle-left-bottom", "angle-right-bottom" to change section angle.
* Use class "bg-image-fixed" to make background image fixed (otherwise use class "bg-image").
* Use class "bg-image-parallax" to enable background image parallax effect (otherwise use class "bg-image").
* Use class "bg-pattern" if you use background patterns (example: http://subtlepatterns.com/). Combine with class "bg-image-fixed".
--->
<section id="section-8" class="contact-section bg-dark bg-image-parallax" style="background-image: url(assets/img/misc/bg-2.jpg);">

	<!-- Element cover
	===================
	* Use background transparent color classes for colored opacity (example: "bg-transparent-6-dark", "bg-transparent-8-5-red" ... 1 to 95). Look into "helper.css" file for more info.  
	-->
	<span class="cover bg-transparent-9-dark bg-transparent-gradient-1"></span>
	<!-- contact v1.0 -->
	
	<div class="container">
		<div class="row wow fadeIn">
		
			<!-- Left column -->
			<div class="col-md-7">
		
				<!-- Begin heading 
				===================
				* Use class "heading-center" or "heading-right" to align heading.
				* Use class "heading-xs", "heading-sm", "heading-md", "heading-md" or "heading-xlg" to shange heading size.
				* Use class "heading-hover" to enable heading hover effect.
				* Use class "heading-uppercase" to enable uppercase letters.
				-->
				<div class="heading heading-md heading-hover">
					<span class="heading-title-ghost">Contact</span>
					<h2 class="heading-title text-white">Contact</h2>
		
					<!-- Begin divider 
					===================
					* Use class "hr-width-1", "hr-width-2" -> up to "hr-width-10" to shange divider width.
					* Use class "hr-1x", "hr-2x", "hr-3x", "hr-4x" or "hr-5x" to shange divider size.
					* Use class "hr-dotted", "hr-dashed" or "hr-double" to shange divider style.
					-->
					<hr class="hr-width-1 hr-5x border-main">
					<!-- End divider -->
		
					<p class="heading-tescription lead text-gray-2">
						Please use the form to contact me. Alternatively, you can use the email <a href="mailto:info@bit15.com" target="_blank">info@bit15.com</a>
					</p>
				</div>
				<!-- End heading -->
		
			</div> <!-- /.col -->
		
			<!-- Right column -->
			<div class="col-md-5 text-gray-2 padding-left-40">
		
				<div class="contact-info">
					<p><i class="fa fa-home"></i> 14305 SW 57th Ln, Miami FL</p>
					<p><i class="fa fa-phone"></i> phone: +1 (786) 486-7821</p>
					<p><i class="fa fa-envelope"></i> <a href="mailto:info@bit15.com" target="_blank">info@bit15.com</a></p>
				</div>
		
				<h5 class="margin-top-40 margin-bottom-20">Social Media:</h5>
		
				<!-- Begin social icons -->
				<ul class="social-icons margin-bottom-20">
					<li><a class="btn btn-social-min btn-white-bordered btn-rounded-full btn-lg" href="http://fb.me/davebit15" target="_blank"><i class="fa fa-facebook"></i></a></li>
					<!---
					<li><a class="btn btn-social-min btn-white-bordered btn-rounded-full btn-lg" href="" target="_blank"><i class="fa fa-twitter"></i></a></li>
					<li><a class="btn btn-social-min btn-white-bordered btn-rounded-full btn-lg" href="" target="_blank"><i class="fa fa-google-plus"></i></a></li>
					<li><a class="btn btn-social-min btn-white-bordered btn-rounded-full btn-lg" href="" target="_blank"><i class="fa fa-pinterest"></i></a></li>
					<li><a class="btn btn-social-min btn-white-bordered btn-rounded-full btn-lg" href="" target="_blank"><i class="fa fa-dribbble"></i></a></li>
					--->
				</ul>
				<!-- End social icons -->
		
			</div> <!-- /.col -->
		
		</div> <!-- /.row -->
		
		<div class="row">
			<div class="col-md-12">
		
				<!-- Begin contact form 
				========================= -->
				<form id="contact-form" class="margin-top-80 text-white wow fadeIn" data-wow-delay="0.3s">
		
					<!-- Begin hidden required fields (https://github.com/agragregra/uniMail) -->
					<input type="hidden" name="project_name" value="bit15.com"> <!-- Change value to your site name -->
					<input type="hidden" name="admin_email" value="info@bit15.com"> <!-- Change value to your email address (where a message will be sent) -->
					<input type="hidden" name="form_subject" value="Message from bit15.com"> <!-- Change value to your own message subject -->
					<!-- End Hidden Required Fields -->
		
					<div class="row">
						<div class="col-lg-4">
							<div class="form-group">
								<input type="text" class="form-control" name="Name" placeholder="Your Name" required="">
							</div>
						</div>
						<div class="col-lg-4">
							<div class="form-group">
								<input type="email" class="form-control" name="Email" placeholder="Your Email" required="">
							</div>
						</div>
						<div class="col-lg-4">
							<div class="form-group">
								<input type="text" class="form-control" name="Subject" placeholder="Subject" required="">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="form-group">
								<textarea class="form-control" name="Message" rows="8" placeholder="Your Message (text only)" required=""></textarea>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<button type="submit" class="btn btn-primary btn-rounded btn-block btn-lg">Send Message</button>
						</div>
					</div>
				</form>
				<!-- End contact form -->
		
			</div> <!-- /.col-->
	</div> <!-- /.row -->
</div> <!-- /.container -->

</section>