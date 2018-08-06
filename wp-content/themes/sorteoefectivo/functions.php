<?php
/*
*
*  Contiene las funciones implementadas en el template.
*
* @package WPKit
* @author ALUMIN
* @version WPKIT 2.0
*/

/*******************************************************************************
WPKit */

	include_once( get_stylesheet_directory() . '/wpkit/config.php' );


/***************************************************************************
* Página de opciones ACF *

	if( function_exists('acf_add_options_page') ) {

		// acf_add_options_page(array(
		// 	'page_title' 	=> 'Opciones',
		// 	'menu_title'	=> 'ACF Options',
		// 	'menu_slug' 	=> 'opciones-de-panel',
		// 	'capability'	=> 'edit_posts',
		// 	'redirect'		=> false,
		// 	'icon_url'		=> 'dashicons-marker',
		//  'position'		=> '4',
		// ));

		// acf_add_options_sub_page(array(
		// 	'page_title' 	=> 'Herramientas',
		// 	'menu_title'	=> 'Herramientas',
		// 	'parent_slug'	=> 'opciones-de-panel',
		// ));

		acf_add_options_sub_page(array(
			'page_title' 	=> 'Opciones',
			'menu_title'	=> 'Opciones',
			'parent_slug'	=> 'options-wpkit',
		));

	}

/* ***********************************************************************************************************************
* Custom post type template *

	// 'Custom_post_type_name'

		if ( ! function_exists('wk_custom_post_type') ) {

			// Register Custom Post Type
			function wk_custom_post_type() {

				$ctp_name = 'articulos';
				$name = 'Articulos';
				$names = 'Artículos';

				$labels = array(
					'name'                  => _x( $names, 'Post Type General Name', 'wpkit_text_domain' ),
					'singular_name'         => _x( $name, 'Post Type Singular Name', 'wpkit_text_domain' ),
					'menu_name'             => __( $names, 'wpkit_text_domain' ),
					'name_admin_bar'        => __( $names, 'wpkit_text_domain' ),
					'archives'              => __( $names, 'wpkit_text_domain' ),
					'attributes'            => __( $names . ' Attributes', 'text_domain' ),
					'parent_item_colon'     => __( 'Superior', 'wpkit_text_domain' ),
					'all_items'             => __( 'Todo', 'wpkit_text_domain' ),
					'add_new_item'          => __( 'Añadir', 'wpkit_text_domain' ),
					'add_new'               => __( 'Nuevo', 'wpkit_text_domain' ),
					'new_item'              => __( 'Nuevo', 'wpkit_text_domain' ),
					'edit_item'             => __( 'Editar', 'wpkit_text_domain' ),
					'update_item'           => __( 'Actualizar', 'wpkit_text_domain' ),
					'view_item'             => __( 'Ver', 'wpkit_text_domain' ),
					'search_items'          => __( 'Buscar', 'wpkit_text_domain' ),
					'not_found'             => __( 'No se encontró', 'wpkit_text_domain' ),
					'not_found_in_trash'    => __( 'No se encontró en la papelera', 'wpkit_text_domain' ),
					'featured_image'        => __( 'Imagen destacada', 'wpkit_text_domain' ),
					'set_featured_image'    => __( 'Seleccionar como imagen destacada', 'wpkit_text_domain' ),
					'remove_featured_image' => __( 'Quitar imagen destacada', 'wpkit_text_domain' ),
					'use_featured_image'    => __( 'Usar como imagen destacada', 'wpkit_text_domain' ),
					'insert_into_item'      => __( 'Insertar', 'wpkit_text_domain' ),
					'uploaded_to_this_item' => __( 'Adjuntas a esta publicación', 'wpkit_text_domain' ),
					'items_list'            => __( 'Listado de elementos', 'wpkit_text_domain' ),
					'items_list_navigation' => __( 'Navegación por items', 'wpkit_text_domain' ),
					'filter_items_list'     => __( 'Filtrar por item en el listado', 'wpkit_text_domain' ),
				);
				$rewrite = array(
					'slug'                  => $ctp_name,
					'with_front'            => true,
					'pages'                 => true,
					'feeds'                 => true,
				);
				// Requiere habilitar capabilities para el rol de usuario
				// $capabilities = array(
				// 	'edit_post'          => 'edit_articulo',
				// 	'read_post'          => 'read_articulo',
				// 	'delete_post'        => 'delete_articulo',
				// 	'edit_posts'         => 'edit_articulos',
				// 	'edit_others_posts'  => 'edit_others_articulos',
				// 	'publish_posts'      => 'publish_articulos',
				// 	'read_private_posts' => 'read_private_articulos',
				// 	'create_posts'       => 'edit_articulos',
				// );
				$args = array(
					'label'                 => __( $name, 'wpkit_text_domain' ),
					'description'           => __( 'Publicaciones en el sitio', 'wpkit_text_domain' ),
					'labels'                => $labels,
					'supports'              => array(
													'title',
													'editor',
													'excerpt',
													'author',
													'thumbnail',
													'comments',
													'trackbacks',
													'revisions',
													'custom-fields',
													'page-attributes',
													'post-formats',
												),
					'taxonomies'            => array(
													'post_tag',
													'category'
												),
					'hierarchical'          => true,
					'public'                => true,
					'show_ui'               => true,
					'menu_position'         => 5,
					'menu_icon'             => 'dashicons-admin-post',
					'show_in_menu'          => true,
					'show_in_admin_bar'     => true,
					'show_in_nav_menus'     => true,
					'can_export'            => true,
					'has_archive'           => true,
					'exclude_from_search'   => false,
					'publicly_queryable'    => true,
					'rewrite'               => $rewrite,
					// 'capabilities'          => $capabilities,
					'show_in_rest'			=> true,
				);
				register_post_type( $ctp_name, $args );

			}
			add_action( 'init', 'wk_custom_post_type', 0 );
		}

		// Añade capabilities al rol de usuario
		// Necesario si se añade capabilities como argumento en el post type
		// function add_theme_caps() {
		//     // gets the administrator role
		//     $admins = get_role( 'editor' );

		//     $admins->add_cap( 'edit_articulo' );
		//     $admins->add_cap( 'read_articulo' );
		//     $admins->add_cap( 'delete_articulo' );
		//     $admins->add_cap( 'edit_articulos' );
		//     $admins->add_cap( 'edit_others_articulos' );
		//     $admins->add_cap( 'publish_articulos' );
		//     $admins->add_cap( 'read_private_articulos' );
		//     $admins->add_cap( 'edit_articulos' );

		// }
		// add_action( 'admin_init', 'add_theme_caps');


/*******************************************************************************
Tus funciones */



