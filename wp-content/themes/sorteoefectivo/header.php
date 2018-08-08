	<!DOCTYPE html>

	<html lang="<?php bloginfo('language'); ?>" dir="<?php bloginfo('text_direction'); ?>" <?php wk_schema_global_type(); ?> class="<?php wk_user_agent_class(); ?>">

		<head <?php wk_opengraph_header(); ?>>

			<?php wp_head(); ?>
			<link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,700" rel="stylesheet">

		</head>

		<body <?php body_class('wk-wrap-1200'); ?>>

			<div id="wrapper">

				<?php get_template_part( 'modules/_components/header/header' ); ?>

