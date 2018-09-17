<!---
* Use class "angle-left-top", "angle-right-top", "angle-left-bottom", "angle-right-bottom" to change section angle.
--->

<!--- Youtube video background
NOTE: Replace videoURL with your own (videoURL:'your-youtube-video-URL'). 
Do not forget to add your background image for mobile devices (because the video background doesn't work on mobile devices).
More info about YTPlayer: https://github.com/pupunzi/jquery.mb.YTPlayer --->
<section id="section-9" class="video-section youtube-bg text-white angle-right-top" 
	style="background-image: url(assets/img/video-bg/promo-video-bg.jpg); background-position: 50% 50%;"
	data-property="{
      videoURL: 'https://youtu.be/wXYS_6He5s0',
      containment: 'self',
      startAt: 0, 
      stopAt: 0,
      autoPlay: true,
      loop: true,
      mute: true,  
      showControls: false, 
      showYTLogo: false,
      realfullscreen: true,
      addRaster: false, 
      optimizeDisplay: true,
      stopMovieOnBlur: true
	}">

	<!--- Element cover
	===================
	* Use background transparent color classes for colored opacity (example: "bg-transparent-6-dark", "bg-transparent-8-5-red" ... 1 to 95). Look into "helper.css" file for more info.  
	--->
	<span class="cover bg-transparent-8-dark"></span>

	<div class="video-section-caption vertical-align-center">

		<!--- Begin heading 
		===================
		* Use class "heading-center" or "heading-right" to align heading.
		* Use class "heading-xs", "heading-sm", "heading-md", "heading-md" or "heading-xlg" to shange heading size.
		* Use class "heading-hover" to enable heading hover effect.
		* Use class "heading-uppercase" to enable uppercase letters.
		--->
		<div class="heading heading-md heading-center heading-hover wow fadeIn">
			<span class="heading-title-ghost">Video Show-off</span>
			<h2 class="heading-title">Video Show-off</h2>
			<!--<a class="video-btn bg-main" href="https://www.youtube.com/user/HQMEDIA/videos" target="_blank"><i class="fa fa-play"></i></a>-->
			<p class="heading-tescription lead text-gray-2">
				YouTube video embeded just to show I know how to do it <i class="fa fa-smile-o fa-lg"></i>
			</p>
		</div>
		<!-- End heading -->

	</div> <!-- /.vertical-align-center -->

</section>