	<?php

	/*

	Smooth scroll
	Depende de tweenmax

	*/

	if( get_option('wk_option_smoothscroll') ) : ?>

		<script id="script-scroll-smooth">

			var $window = $(window);

			<?php if( get_option( 'wk_option_smoothscroll_timing' ) ) : ?>

				var scrollTime = <?php echo get_option( 'wk_option_smoothscroll_timing' ); ?>;			//Timing de scroll

			<?php else :  ?>

				var scrollTime = .65;			//Timing de scroll

			<?php endif; ?>

			<?php if( get_option( 'wk_option_smoothscroll_disntance' ) ) : ?>

				var scrollDistance = <?php echo get_option( 'wk_option_smoothscroll_disntance' ); ?>;		//Distancia

			<?php else : ?>

				var scrollDistance = 350;		//Distancia

			<?php endif; ?>



			$window.on("mousewheel DOMMouseScroll", function(event){

				event.preventDefault();

				var delta = event.originalEvent.wheelDelta/120 || -event.originalEvent.detail/3;
				var scrollTop = $window.scrollTop();
				var finalScroll = scrollTop - parseInt(delta*scrollDistance);

				TweenMax.to($window, scrollTime, {
					scrollTo : { y: finalScroll, autoKill:true },
						ease: Power1.easeOut,	//For more easing functions see https://api.greensock.com/js/com/greensock/easing/package-detail.html
						autoKill: true,
						overwrite: 5
					});
			});

		</script>

	<?php endif; ?>

	<?php 
		
		/*
		* Preloader
		*/

		if( get_option( 'wk_option_loader' ) ) : ?>

			<script id="script-preloader">

				$(window).load(function() {

					<?php if( get_option( 'wk_option_loader_timing' ) ) : ?>

						setTimeout(function(){
							$(".wk-preloader").fadeOut("slow");
						}, <?php echo get_option( 'wk_option_loader_timing'); ?>);

					<?php else : ?>

						$(".wk-preloader").fadeOut("slow");

					<?php endif; ?>

				});
				
			</script><?php 

		endif; 
	
	?>

	<?php

		/*
		* Toma el campo guardado en metabox scriptdiv y opción Header
		*/

		if( is_page() || is_single() ) :

			global $post;

			if( wk_scriptdiv_get_meta( 'wk_scriptdiv_locate' ) == 'Footer' ) :

				$script = wk_scriptdiv_get_meta( 'wk_scriptdiv_scripts' );

				echo '<!--Page scripts-->';

				echo '<script id="' . $post->post_name . '-foot-scripts">' . $script . '</script>';

			endif;

		endif;

	?>

