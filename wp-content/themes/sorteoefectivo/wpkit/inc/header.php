<?php //info ?>
	<meta charset="<?php bloginfo('charset'); ?>">

<?php //site info ?>
	<!-- Info -->
	<?php
		// Título
		if( is_single() || is_page() ) :
			if( get_post_meta( $post->ID, 'seo_titulo-seo', true) ) :
				$title = get_post_meta( $post->ID, 'seo_titulo-seo', true) . ' | ' . get_bloginfo( 'name' );
			else :
				$title = get_the_title() . ' | ' . get_bloginfo( 'name' );
			endif;
		elseif( is_author() ) :
			$title = 'Publicaciones de ' . get_the_author() . ' en ' . get_bloginfo( 'name' );
		elseif( is_archive() ) :
			if( is_category() ) :
				$title = single_cat_title( "", false ) . ' | ' . get_bloginfo('name');
			elseif( is_tag() ) :
				$title = single_tag_title( "", false ) . ' | ' . get_bloginfo('name');
			elseif( is_day() ) :
				$title = 'Archivo del día ' . get_the_time('l, F j, Y') . ' | ' . get_bloginfo('name');
			elseif( is_month() ) :
				$title = 'Archivo del mes de ' . get_the_time('F Y') . ' | ' . get_bloginfo('name');
			elseif( is_year() ) :
				$title = 'Archivo del año ' . get_the_time('Y') . ' | ' . get_bloginfo('name');
			else :
				$title = get_the_title() . ' | ' . get_bloginfo('name');
			endif;
		else :
			$title = get_bloginfo( 'name' );
		endif;
	?>
	<title><?php echo $title; ?></title>
	<?php
		// Descripción
		if( is_front_page() ) :
			$description = get_bloginfo( 'description' );
		elseif( is_page() ) :
			if( get_post_meta( $post->ID, 'seo_descripcion-seo', true) ) :
				$description = get_post_meta( $post->ID, 'seo_descripcion-seo', true);
			else :
				$description = get_bloginfo( 'description' );
			endif;
		elseif( is_single() ) :
			if( get_post_meta( $post->ID, 'seo_descripcion-seo', true) ) :
				$description = get_post_meta( $post->ID, 'seo_descripcion-seo', true);
			elseif( get_the_excerpt() ) :
				$description = get_the_excerpt();
			else :
				$description = get_bloginfo( 'description' );
			endif;
		elseif( is_author() ) :
			$author_description = get_the_author_meta( 'description' );
			if( $author_description ) :
				$description = $author_description;
			else :
				$description = get_bloginfo( 'description' );
			endif;
		elseif( is_archive() ) :
			if( is_category() ) :
				remove_filter('term_description','wpautop');
				$category_description = category_description();
				if( $category_description ) :
					$description = $category_description;
				else :
					$description = get_bloginfo( 'description' );
				endif;
			elseif( is_tag() ) :
				remove_filter('term_description','wpautop');
				$tag_description = tag_description();
				if( $tag_description ) :
					$description = $tag_description;
				else :
					$description = get_bloginfo( 'description' );
				endif;
			elseif( is_day() ) :
				$description = 'Archivo del día ' . get_the_time('l, F j, Y') . ' | ' . get_bloginfo('name');
			elseif( is_month() ) :
				$description = 'Archivo del mes de ' . get_the_time('F Y') . ' | ' . get_bloginfo('name');
			elseif( is_year() ) :
				$description = 'Archivo del año ' . get_the_time('Y') . ' | ' . get_bloginfo('name');
			else :
				$description = get_the_title() . ' | ' . get_bloginfo('name');
			endif;
		else :
			$description = get_bloginfo( 'description' );
		endif;
	?>
	<meta name="description" content="<?php echo $description; ?>">
	<?php if( is_single() ) : ?>
		<meta name="keywords" content="<?php echo strip_tags(get_the_tag_list('',', ','')); ?>">
	<?php endif; ?>
<?php //content info ?>
	<meta name="author" content="<?php if( is_front_page() || is_archive() ) : ?><?php bloginfo('name'); ?><?php else : ?><?php the_author_meta('display_name', 1); ?><?php endif; ?>">
	<meta name="creation_date" content="<?php echo get_post_time('l, F jS, Y, g:i a') ?>">
	<meta name="revised" content="<?php echo get_the_modified_time('l, F jS, Y, g:i a') ?>">

<?php //development info ?>
	<meta name="template" content="WPKit Framework / Alumin.agency">

<?php //Mobile ?>
<!-- Display -->
	<meta name="HandheldFriendly" content="True">
	<meta name="MobileOptimized" content="<?php if( get_option('option_mobile_callback') ) : echo get_option('option_mobile_callback'); ?><?php else : ?>756<?php endif; ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<?php if( get_option( 'wk_option_meta_applewebapp' ) ) : ?>
		<meta name="apple-mobile-web-app-capable" content="yes">
	<?php endif; ?>
	<?php if( get_option( 'wk_option_meta_applefullscreen' ) ) : ?>
		<meta name="apple-touch-fullscreen" content="yes">
	<?php endif; ?>
	<?php if( get_field( 'wk_option_meta_applestatusbarcolor' ) ) : ?>
		<meta name="apple-mobile-web-app-status-bar-style" content="<?php echo get_option( 'wk_option_theme_color' ); ?>">
	<?php endif; ?>
	<meta name="format-detection" content="telephone=no">
	<?php if( get_option( 'wk_option_meta_mscolor' ) ) : ?>
		<meta name="msapplication-TileColor" content="<?php echo get_option( 'wk_option_theme_color' ); ?>">
	<?php endif; ?>
	<?php if( get_option( 'wk_option_meta_mstileimg' ) ) : ?>
		<meta name="msapplication-TileImage" content="<?php echo get_template_directory_uri(); ?>/img//ms-app-icon.png">
	<?php endif; ?>

<?php //Icons ?>
	<!--Icons-->
	<?php if( get_option( 'wk_option_meta_appleicon' ) ) : ?>
		<link rel="apple-touch-icon" type="image/png" href="<?php echo get_template_directory_uri(); ?>/img/apple-touch-icon.png">
	<?php endif; ?>
	<?php if( get_option( 'wk_option_meta_applestartupimg' ) ) : ?>
		<link rel="apple-touch-startup-image" href="<?php echo get_template_directory_uri(); ?>/img/apple-startup.png">
	<?php endif; ?>
	<?php if( get_option( 'option_favicon' ) ) : ?>
		<link rel="icon" type="image/ico" href="<?php echo get_option( 'option_favicon' ); ?>">
	<?php else : ?>
		<link rel="icon" type="image/png" href="<?php echo get_template_directory_uri(); ?>/img/favicon.png">
	<?php endif; ?>
	<?php if( get_option( 'wk_option_theme_icon' ) ) : ?>
		<link rel="icon" type="image/png" sizes="192x192"  href="<?php echo get_option( 'wk_option_theme_icon' ); ?>">
	<?php endif; ?>
	<?php if( get_option( 'wk_option_theme_color' ) ) : ?>
		<meta name="theme-color" content="<?php echo get_option( 'wk_option_theme_color' ); ?>">
	<?php endif; ?>

<?php //Links ?>
	<!-- Links -->
	<meta name="url" content="<?php bloginfo('url'); ?>">
	<meta name="identifier-URL" content="<?php bloginfo('url'); ?>">
	<link rel="shortlink" href="<?php echo wp_get_shortlink(); ?>">
	<link rel="canonical" href="<?php if( is_front_page() ) : ?><?php bloginfo('url'); ?><?php else : ?><?php echo get_permalink(); ?><?php endif; ?>">
	<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
	<?php if( get_option( 'wk_option_meta_rss' ) ) : ?>
		<link title="<?php bloginfo('name'); ?> RSS Feed" href="<?php bloginfo('rss2_url'); ?>" rel="alternate" type="application/rss+xml">
	<?php endif; ?>
	<?php global $paged;
		if ( get_previous_posts_link() ) : ?>
		<link rel="prev" href="<?php echo get_pagenum_link( $paged - 1 ); ?>">
	<?php endif; ?>
	<?php if ( get_next_posts_link() ) : ?>
		<link rel="next" href="<?php echo get_pagenum_link( $paged +1 ); ?>">
	<?php endif; ?>

<?php if( get_option( 'option_schema_org' ) ) : ?>
<?php //Schema ?>
<!-- Schema -->
	<?php
		// Schema Título
		if( is_front_page() ) :
			if( get_option( 'option_schema_name' ) ) :
				$schema_name = get_option( 'option_schema_name' ) . ' | ' . get_bloginfo('name');
			else :
				$schema_name = get_bloginfo('name');
			endif;
		elseif( is_single() || is_page() ) :
			if( get_post_meta( $post->ID, 'seo_titulo-schema', true) ) :
				$schema_name = get_post_meta( $post->ID, 'seo_titulo-schema', true) . ' | ' . get_bloginfo('name');
			else :
				$schema_name = get_the_title() . ' | ' . get_bloginfo('name');
			endif;
		elseif( is_author() ) :
			$schema_name = get_the_author();
		elseif( is_archive() ) :
			if( is_category() ) :
				$schema_name = single_cat_title( "", false ) . ' | ' . get_bloginfo('name');
			elseif( is_tag() ) :
				$schema_name = single_tag_title( "", false ) . ' | ' . get_bloginfo('name');
			elseif( is_author() ) : global $post; $author_id = $post->post_author;
				$schema_name = the_author_meta('display_name', $author_id) . ' | ' . get_bloginfo('name');
			elseif( is_day() ) :
				$schema_name = 'Archivo del día ' . get_the_time('l, F j, Y') . ' | ' . get_bloginfo('name');
			elseif( is_month() ) :
				$schema_name = 'Archivo del mes de ' . get_the_time('F Y') . ' | ' . get_bloginfo('name');
			elseif( is_year() ) :
				$schema_name = 'Archivo del año ' . get_the_time('Y') . ' | ' . get_bloginfo('name');
			else :
				$schema_name = get_the_title() . ' | ' . get_bloginfo('name');
			endif;
		else :
			$schema_name = get_bloginfo('name');
		endif;
	?>
	<meta itemprop="name" content="<?php echo $schema_name; ?>">
	<?php
		// Schema Descripción
		if( is_front_page() ) :
			if( get_option( 'option_schema_description' ) ) :
				$schema_description = get_option( 'option_schema_description' );
			else :
				$schema_description = get_bloginfo( 'description' );
			endif;
		elseif( is_page() ) :
			if( get_post_meta( $post->ID, 'seo_descripcion-schema', true) ) :
				$schema_description = get_post_meta( $post->ID, 'seo_descripcion-schema', true);
			else :
				$schema_description = get_bloginfo( 'description' );
			endif;
		elseif( is_single() ) :
			if( get_post_meta( $post->ID, 'seo_descripcion-schema', true) ) :
				$schema_description = get_post_meta( $post->ID, 'seo_descripcion-schema', true);
			elseif( get_the_excerpt() ) :
				$schema_description = get_the_excerpt();
			else :
				$schema_description = get_bloginfo( 'description' );
			endif;
		elseif( is_author() ) :
			$author_description = get_the_author_meta( 'description' );
			if( $author_description ) :
				$schema_description = $author_description;
			else :
				$schema_description = get_bloginfo( 'description' );
			endif;
		elseif( is_archive() ) :
			if( is_category() ) :
				remove_filter('term_description','wpautop');
				$category_description = category_description();
				if( $category_description ) :
					$schema_description = $category_description;
				else :
					$schema_description = get_bloginfo( 'description' );
				endif;
			elseif( is_tag() ) :
				remove_filter('term_description','wpautop');
				$tag_description = tag_description();
				if( $tag_description ) :
					$schema_description = $tag_description;
				else :
					$schema_description = get_bloginfo( 'description' );
				endif;
			else :
				$schema_description = get_bloginfo('description');
			endif;
		else :
			$schema_description = get_bloginfo( 'description' );
		endif;
	?>
	<meta itemprop="description" content="<?php echo $schema_description; ?>">

	<?php
		// Shcema Image
		if( is_single() or is_page() or is_front_page() ) :
			if( get_post_meta( $post->ID, 'seo_imagen-schema', true) ) :
				$schema_image = get_post_meta( $post->ID, 'seo_imagen-schema', true);
			elseif( get_option( 'option_schema_image' ) ) :
				$schema_image = get_option( 'option_schema_image' );
			elseif( has_post_thumbnail() ) :
				$attachment_url = wp_get_attachment_image_src( get_post_thumbnail_id(), 'large' );
				$schema_image = $attachment_url[0];
			endif;
		elseif( is_attachment() ) :
			$attachment_url = wp_get_attachment_image_src( get_post_thumbnail_id(), 'large' );
			$schema_image = $attachment_url[0];
		else:
			if( get_option( 'option_schema_image' ) ) :
				$schema_image = get_option( 'option_schema_image' );
			else :
				$schema_image = get_option('wk_custom_logo_main');
			endif;
		endif;
	?>

		<meta itemprop="image" content="<?php echo $schema_image; ?>">

	<?php endif; ?>

		<?php //Social ?>
		<?php global $post; $author_id = $post->post_author; ?>
		<?php if( is_front_page() && get_option('option_google_profile') ) : ?>
			<?php // Google ?>
			<link rel="me" type="text/html" href="<?php echo get_option('option_google_profile'); ?>">
		<?php elseif( ! is_front_page() && get_the_author_meta( 'gplus', $author_id ) ) : ?>
			<link rel="me" type="text/html" href="http://plus.google.com/+<?php the_author_meta( 'gplus', $author_id ); ?>">
		<?php endif; ?>
	<?php if( get_option( 'option_open_graph' ) ) : ?>
		<?php // Facebook ?>
		<!-- Facebook -->
		<?php if( get_option('option_facebook_id') ) : ?>
			<meta name="fb:page_id" content="<?php echo get_option('option_facebook_id'); ?>">
		<?php endif; ?>
		<meta property="og:url" content="<?php if( is_front_page() ) : ?><?php bloginfo('url'); ?><?php else : ?><?php echo get_permalink(); ?><?php endif; ?>">
		<?php
			if( is_front_page() ) :
				if( get_option( 'option_facebook_title' ) ) :
					$facebook_title = get_option( 'option_facebook_title' );
				else :
					$facebook_title = get_bloginfo( 'name' );
				endif;
			elseif( is_single() || is_page() ) :
				if( get_post_meta( $post->ID, 'seo_titulo-facebook', true) ) :
					$facebook_title = get_post_meta( $post->ID, 'seo_titulo-facebook', true);
				else :
					$facebook_title = get_the_title($post->ID);
				endif;
			elseif( is_author() ) :
				$facebook_title = get_the_author();
			elseif( is_archive() ) :
				if( is_category() ) :
					$facebook_title = single_cat_title( "", false ) . ' | ' . get_bloginfo('name');
				elseif( is_tag() ) :
					$facebook_title = single_tag_title( "", false ) . ' | ' . get_bloginfo('name');
				elseif( is_author() ) : global $post; $author_id = $post->post_author;
					$facebook_title = the_author_meta('display_name', $author_id) . ' | ' . get_bloginfo('name');
				elseif( is_day() ) :
					$facebook_title = 'Archivo del día ' . get_the_time('l, F j, Y') . ' | ' . get_bloginfo('name');
				elseif( is_month() ) :
					$facebook_title = 'Archivo del mes de ' . get_the_time('F Y') . ' | ' . get_bloginfo('name');
				elseif( is_year() ) :
					$facebook_title = 'Archivo del año ' . get_the_time('Y') . ' | ' . get_bloginfo('name');
				else :
					$facebook_title = get_the_title() . ' | ' . get_bloginfo('name');
				endif;
			else :
				$facebook_title = get_bloginfo('name');
			endif;
		?>
		<meta property="og:title" content="<?php echo $facebook_title; ?>">

		<?php
			if( is_front_page() ) :
				if( get_option( 'option_facebook_description' ) ) :
					$facebook_description = get_option( 'option_facebook_description' );
				else :
					$facebook_description = get_bloginfo( 'description' );
				endif;
			elseif( is_single() || is_page() ) :
				if( get_post_meta( $post->ID, 'seo_descripcion-facebook', true) ) :
					$facebook_description = get_post_meta( $post->ID, 'seo_descripcion-facebook', true);
				elseif( get_the_excerpt() ) :
					$facebook_description = get_the_excerpt();
				else :
					$facebook_description = get_bloginfo( 'description' );
				endif;
			elseif( is_author() ) :
				$author_description = get_the_author_meta( 'description' );
				if( $author_description ) :
					$schema_description = $author_description;
				else :
					$schema_description = get_bloginfo( 'description' );
				endif;
			elseif( is_archive() ) :
				if( is_category() ) :
					remove_filter('term_description','wpautop');
					$category_description = category_description();
					if( $category_description ) :
						$schema_description = $category_description;
					else :
						$schema_description = get_bloginfo( 'description' );
					endif;
				elseif( is_tag() ) :
					remove_filter('term_description','wpautop');
					$tag_description = tag_description();
					if( $tag_description ) :
						$schema_description = $tag_description;
					else :
						$schema_description = get_bloginfo( 'description' );
					endif;
				else :
					$schema_description = get_bloginfo('description');
				endif;
			else :
				$schema_description = get_bloginfo( 'description' );
			endif;
		?>
		<meta property="og:description" content="<?php echo $facebook_description; ?>">
		<meta property="og:locale" content="<?php bloginfo('language'); ?>">
		<meta property="og:type" content="<?php if ( is_front_page() ) : ?>website<?php else : ?>article<?php endif; ?>">
		<?php
			// Facebook Image
			if( is_front_page() ) :
				if( get_option( 'option_facebook_site_image' ) ) :
					$facebook_image = get_option( 'option_facebook_site_image' );
				elseif( has_post_thumbnail() ) :
					$attachment_url = wp_get_attachment_image_src( get_post_thumbnail_id(), 'large' );
					$facebook_image = $attachment_url[0];
				endif;
			elseif( is_single() or is_page() ) :
				if( get_post_meta( $post->ID, 'seo_imagen-facebook', true) ) :
					$facebook_image = get_post_meta( $post->ID, 'seo_imagen-facebook', true);
				elseif( has_post_thumbnail() ) :
					$attachment_url = wp_get_attachment_image_src( get_post_thumbnail_id(), 'large' );
					$facebook_image = $attachment_url[0];
				endif;
			elseif( is_attachment() ) :
				$attachment_url = wp_get_attachment_image_src( get_post_thumbnail_id(), 'large' );
				$facebook_image = $attachment_url[0];
			else:
				if( get_option( 'option_facebook_site_image' ) ) :
					$facebook_image = get_option( 'option_facebook_site_image' );
				else :
					$facebook_image = get_option('wk_custom_logo_main');
				endif;
			endif;
		?>
		<meta property="og:image" content="<?php echo $facebook_image; ?>">
		<meta property="og:site_name" content="<?php if( get_option( 'option_facebook_site_name' ) ) : echo get_option( 'option_facebook_site_name' ); else : bloginfo('name'); endif; ?>">
		<meta name="og:region" content="MX">
		<meta name="og:country-name" content="Mexico">
		<?php if( is_single() || is_attachment() ) : ?>
			<?php if( get_option( 'option_facebook_author' ) or get_the_author_meta('facebook', $author_id ) ) : ?>
					<?php if( get_option( 'option_facebook_author_global' ) == 1 ) : ?>
						<?php if( get_option( 'option_facebook_author' ) ) : ?>
							<meta name="article:author" content="<?php echo get_option( 'option_facebook_author' ); ?>">
						<?php else : ?>
							<meta name="article:author" content="http://www.facebook.com/<?php the_author_meta( 'facebook', $author_id ); ?>">
						<?php endif; ?>
					<?php else : ?>
						<?php if( get_the_author_meta('facebook', $author_id ) ) : ?>
							<meta name="article:author" content="http://www.facebook.com/<?php the_author_meta( 'facebook', $author_id ); ?>">
						<?php else : ?>
							<meta name="article:author" content="<?php echo get_option( 'option_facebook_author' ); ?>">
						<?php endif; ?>
					<?php endif; ?>
				<?php endif; ?>
			<?php else : ?>
				<?php if( get_option( 'option_facebook_author' ) ) : ?>
					<meta name="article:author" content="<?php echo get_option( 'option_facebook_author' ); ?>">
				<?php endif; ?>
			<?php endif; ?>
		<meta property="article:published_time" content="<?php echo get_post_time('c') ?>">
		<meta property="article:modified_time" content="<?php echo get_the_modified_time('c') ?>">
	<?php endif; ?>
	<?php if( get_option( 'option_twitter_cards' ) ) : ?>
		<!-- Twitter -->
		<?php
			if( is_front_page() ) :
				if( get_option( 'option_twitter_type' ) ) :
					if( get_option( 'option_twitter_type') == 1 ) :
						$twitter_card_type = 'summary_large_image';
					elseif( get_option( 'option_twitter_type' ) == 2 ) :
						$twitter_card_type = 'summary';
					elseif( get_option( 'option_twitter_type') == 3 ) :
						$twitter_card_type = 'app';
					elseif( get_option( 'option_twitter_type') == 4 ) :
						$twitter_card_type = 'player';
					endif;
				else :
					$twitter_card_type = 'summary_large_image';
				endif;
			elseif( is_single() || is_page() ) :
				if( get_post_meta( $post->ID, 'seo_tipo-twitter-card', true) ) :
					if( get_post_meta( $post->ID, 'seo_tipo-twitter-card', true) == 'global' ) :
						if( get_option( 'option_twitter_type') == 1 ) :
							$twitter_card_type = 'summary_large_image';
						elseif( get_option( 'option_twitter_type' ) == 2 ) :
							$twitter_card_type = 'summary';
						elseif( get_option( 'option_twitter_type') == 3 ) :
							$twitter_card_type = 'app';
						elseif( get_option( 'option_twitter_type') == 4 ) :
							$twitter_card_type = 'player';
						endif;
					else :
						$twitter_card_type = get_post_meta( $post->ID, 'seo_tipo-twitter-card', true);
					endif;
				elseif( get_option( 'option_twitter_type' ) ) :
					if( get_option( 'option_twitter_type') == 1 ) :
						$twitter_card_type = 'summary_large_image';
					elseif( get_option( 'option_twitter_type' ) == 2 ) :
						$twitter_card_type = 'summary';
					elseif( get_option( 'option_twitter_type') == 3 ) :
						$twitter_card_type = 'app';
					elseif( get_option( 'option_twitter_type') == 4 ) :
						$twitter_card_type = 'player';
					endif;
				else :
					$twitter_card_type = 'summary_large_image';
				endif;
			else :
				$twitter_card_type = 'summary_large_image';
			endif;
		?>

		<meta name="twitter:card" content="<?php echo $twitter_card_type; ?> ">
		<meta name="twitter:site" content="@<?php echo get_option('option_twitter_acc'); ?>">
		<?php global $post; $author_id = $post->post_author; ?>


		<?php if( is_single() || is_page() ) : ?>

			<?php if( get_post_meta( $post->ID, 'seo_autor-twitter', true) == 1 ) : ?>
				<?php if(get_the_author_meta('twitter', $author_id ) ) : ?>
					<meta name="twitter:creator" content="http://www.twitter.com/<?php the_author_meta( 'twitter', $author_id ); ?>">
				<?php elseif( get_option( 'option_twitter_acc' ) ) : ?>
					<meta name="twitter:creator" content="http://www.twitter.com/<?php echo get_option( 'option_twitter_acc' ); ?>">
				<?php endif; ?>
			<?php elseif( get_post_meta( $post->ID, 'seo_autor-twitter', true) == 2 && get_option( 'option_twitter_acc' ) ) : ?>
				<meta name="twitter:creator" content="http://www.twitter.com/<?php echo get_option( 'option_twitter_acc' ); ?>">
			<?php endif; ?>

		<?php else : ?>

			<?php if( get_option( 'option_twitter_acc' ) ) : ?>
				<meta name="twitter:creator" content="http://www.twitter.com/<?php echo get_option( 'option_twitter_acc' ); ?>">
			<?php endif; ?>

		<?php endif; ?>

		<?php
			if( is_home() ) :
				if( get_option( 'option_twitter_title' ) ) :
					$twitter_title = get_option( 'option_twitter_title' );
				else :
					$twitter_title = get_bloginfo( 'name' );
				endif;
			elseif( is_single() || is_page() || is_attachment() ) :
				if( get_post_meta( $post->ID, 'seo_titulo-twitter', true) ) :
					$twitter_title = get_post_meta( $post->ID, 'seo_titulo-twitter', true);
				else :
					$twitter_title = get_the_title();
				endif;
			elseif( is_author() ) :
				$twitter_title = 'Publicaciones de ' . get_the_author() . ' en ' . get_bloginfo( 'name' );
			else :
				$twitter_title = get_the_title();
			endif;
		?>

		<meta name="twitter:title" content="<?php echo $twitter_title; ?>">

		<?php
			// Descripción twitter
			if( is_home() ) :
				if( get_option( 'option_twitter_description' ) ) :
					$twitter_description = get_option( 'option_twitter_description' );
				else :
					$twitter_description = get_bloginfo( 'description' );
				endif;
			elseif( is_page() ) :
				if( get_post_meta( $post->ID, 'seo_descripcion-seo', true) ) :
					$twitter_description = get_post_meta( $post->ID, 'seo_descripcion-twitter', true);
				else :
					$twitter_description = get_bloginfo( 'description' );
				endif;
			elseif( is_single() ) :
				if( get_post_meta( $post->ID, 'seo_descripcion-twitter', true) ) :
					$twitter_description = get_post_meta( $post->ID, 'seo_descripcion-twitter', true);
				elseif( get_the_excerpt() ) :
					$twitter_description = get_the_excerpt();
				else :
					$twitter_description = get_bloginfo( 'description' );
				endif;
			elseif( is_author() ) :
				$author_description = get_the_author_meta( 'description' );
				if( $author_description ) :
					$twitter_description = $author_description;
				else :
					$twitter_description = get_bloginfo( 'description' );
				endif;
			elseif( is_archive() ) :
				if( is_category() ) :
					remove_filter('term_description','wpautop');
					$category_description = category_description();
					if( $category_description ) :
						$twitter_description = $category_description;
					else :
						$twitter_description = get_bloginfo( 'description' );
					endif;
				elseif( is_tag() ) :
					remove_filter('term_description','wpautop');
					$tag_description = tag_description();
					if( $tag_description ) :
						$twitter_description = $tag_description;
					else :
						$twitter_description = get_bloginfo( 'description' );
					endif;
				elseif( is_day() ) :
					$twitter_description = 'Archivo del día ' . get_the_time('l, F j, Y') . ' | ' . get_bloginfo('name');
				elseif( is_month() ) :
					$twitter_description = 'Archivo del mes de ' . get_the_time('F Y') . ' | ' . get_bloginfo('name');
				elseif( is_year() ) :
					$twitter_description = 'Archivo del año ' . get_the_time('Y') . ' | ' . get_bloginfo('name');
				else :
					$twitter_description = get_the_title() . ' | ' . get_bloginfo('name');
				endif;
			else :
				$twitter_description = get_bloginfo( 'description' );
			endif;
		?>

		<meta name="twitter:description" content="<?php echo $twitter_description; ?>">
		<?php if( is_single() ) : ?>
			<?php if( get_post_meta( $post->ID, 'seo_imagen-twitter', true) ) : ?>
				<meta name="twitter:image" content="<?php echo get_post_meta( $post->ID, 'seo_imagen-twitter', true); ?>">
			<?php elseif( has_post_thumbnail() ) : ?>
				<meta name="twitter:image" content="<?php $attachment_url = wp_get_attachment_image_src( get_post_thumbnail_id(), 'large' ); echo $attachment_url[0]; ?>">
			<?php endif; ?>
		<?php elseif( is_attachment() ) : ?>
			<meta name="twitter:image" content="<?php echo wp_get_attachment_url($post->id); ?>">
		<?php else : ?>
			<?php if( get_option( 'option_twitter_image' ) ) : ?>
				<meta name="twitter:image" content="<?php echo get_option( 'option_twitter_image' ); ?>">
			<?php endif; ?>
		<?php endif; ?>

		<?php if( is_attachment() ) : ?>
			<meta name="twitter:url" content="<?php the_permalink(); ?>" />
		<?php endif; ?>
	<?php endif; ?>

<?php // Style ?>
	<meta http-equiv="Content-Style-Type" content="text/css">


<?php if( get_option('wk_option_analytics') ) : ?>
	<script id="analytics"><?php echo esc_attr( get_option('wk_option_analytics') ); ?></script>
<?php endif; ?>

	<?php

		/*
		* Toma el campo guardado en metabox codediv
		*/

		if( is_page() || is_single() ) :

			global $post;

			$code = wk_codediv_get_meta( 'wk_codediv_cdigo' );

			if( $code ) :

				echo '<!--page-style-->';

				echo '<style id="' . $post->post_name . '-style">' . $code . '</style>';

			endif;

		endif;

		/*
		* Toma el campo guardado en metabox scriptdiv y opción Header
		*/

		if( is_page() || is_single() ) :

			if( wk_scriptdiv_get_meta( 'wk_scriptdiv_locate' ) == 'Header' ) :

				$script = wk_scriptdiv_get_meta( 'wk_scriptdiv_scripts' );

				echo '<!--Page scripts-->';

				echo '<script id="' . $post->post_name . '-head-scripts">' . $script . '</script>';

			endif;

		endif;

	?>

	<?php if( get_post_meta( $post->ID, 'seo_follow', true) || get_post_meta( $post->ID, 'seo_index', true)) : ?>
		<meta name="robots" content="<?php echo get_post_meta( $post->ID, 'seo_follow', true); ?>,<?php echo get_post_meta( $post->ID, 'seo_index', true); ?>">
	<?php endif; ?>

	<!-- -->

	<?php 
		
		/*
		* Preloader
		*/

		if( get_option( 'wk_option_loader' ) ) : ?>

			<style id="wk-preloader-style">
				.no-js .wk-preloader { display: none; }
				.js .wk-preloader { display: block; position: absolute; left: 100px; top: 0; }
				.wk-preloader { position: fixed; left: 0px; top: 0px; width: 100%; height: 100%; z-index: 999999; <?php if( get_option( 'wk_option_loader_background' ) ) : ?> background-color: <?php echo get_option( 'wk_option_loader_background' ); ?>; <?php endif; ?> }
				.wk-preloader-custom { position: fixed; top: 0; bottom: 0; left: 0; right: 0; margin: auto; max-width: 400px; height: auto; z-index: 999999; }
				.wk-preloader-loader { animation-duration: 3s; }
				.wk-preloader-loader,
				.wk-preloader-loader:before,
				.wk-preloader-loader:after {
					background-color: transparent;
					border: 3px solid;
					border-color: transparent;
					border-top-color: <?php echo get_option( 'wk_option_loader_color' ); ?>;
					border-radius: 100px;
					width: 110px;
					height: 110px;
					position: absolute;
					top: 0;
					left: 0;
					right: 0;
					bottom: 0;
					margin: auto;
					transform-origin: center;
					animation-name: spin;
					animation-timing-function: cubic-bezier(0.83, 0.01, 0.4, 0.93);
					animation-iteration-count: infinite;
				}
				.wk-preloader-loader:before, .wk-preloader-loader:after { content: ""; display: block; background-color: transparent; }
				.wk-preloader-loader:before { width: 60%; height: 60%; animation-duration: 6s; }
				.wk-preloader-loader:after { width: 80%; height: 80%; animation-duration: 3s; }
					@keyframes spin {
					0%   { -webkit-transform: rotate(0deg); -ms-transform: rotate(0deg); transform: rotate(0deg); }
					100% { -webkit-transform: rotate(720deg); -ms-transform: rotate(720deg); transform: rotate(720deg); }
				}
			</style>

			 <?php 

		endif; 
	
	?>
