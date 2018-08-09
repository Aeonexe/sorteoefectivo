			<?php get_template_part( 'modules/_components/footer/footer' ); ?>

		</div>

	</body>

	<?php do_action( 'wk_preloader' ); ?>

	<?php wp_footer(); ?>

	<script>
		// [].slice.call( document.querySelectorAll( '.photostack' ) ).forEach( function( el ) { new Photostack( el ); } );
		
		new Photostack( document.getElementById( 'photostack-1' ), {
			callback : function( item ) {
				//console.log(item)
			}
		} );
		new Photostack( document.getElementById( 'photostack-2' ), {
			callback : function( item ) {
				//console.log(item)
			}
		} );
		new Photostack( document.getElementById( 'photostack-3' ), {
			callback : function( item ) {
				//console.log(item)
			}
		} );
	</script>

</html>
