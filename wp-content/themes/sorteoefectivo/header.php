	<!DOCTYPE html>

	<html lang="<?php bloginfo('language'); ?>" dir="<?php bloginfo('text_direction'); ?>" <?php wk_schema_global_type(); ?> class="<?php wk_user_agent_class(); ?>">

		<head <?php wk_opengraph_header(); ?>>

			<?php wp_head(); ?>

		</head>

		<body <?php body_class('wk-wrap-1200'); ?>>

			<div id="wrapper">

				<?php do_action( 'wk_widgets_header_layout' ); ?>

				
