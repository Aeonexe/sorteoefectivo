<section id="header-copy" class="wk-section">
    <div class="wk-section-wrap">

        <div class="wk-cols">
            <div class="content-column wk-col">
                <div class="container">
                    <h4 class="ui-title-extra-big">
                        <span class="title-a-1">¡Quiero ganar</span> 
                        <strong class="title-a-2 ui-title-extra-big">$100,000</strong>
                        <span class="title-a-3">cada mes!</span>
                    </h4>
                    <h2 class="ui-title ui-text-main">
                        <strong class="title-b-1">Con el Sorteo Efectivo</strong> 
                        <span class="title-b-2">Bancoppel ahora es muy fácil</span>
                    </h2>
                </div>
            </div>
            <div class="content-column wk-col">
                <?php img( 'cartera.png'); ?>
            </div>
        </div>

        <footer class="content-column wk-text-center">
            <div class="container">
                <h3 class="ui-title-small"><strong>Conoce las historias de Gaby, Samuel y Amanda, ganadores del Sorteo Efectivo</strong></h3>
                <p class="ui-title-big"><strong>!Participa!</strong></p>
            </div>
        </footer>

    </div>
</section>


<main id="slider-historias">

    <section id="slider-historias" class="wk-section">
    
        <div class="slider-historias-nav">

            <?php 
                $args = array(
                    'post_type'		=>	'post',
                    'order'         => 'DESC'
                );
                $wp_query = new WP_Query( $args );
            ?>
            
            <?php if( $wp_query->have_posts() ) : $r = 0; while( $wp_query->have_posts() ) : $r++; $wp_query->the_post(); ?>
            
                <div id="slide-<?= $post->post_name ?>" class="slide skew">
                    <div class="content">
                        <style id="slide-historia-nav-bg-<?= $r ?>">
                            #slide-<?= $post->post_name ?> .bg { background-image: url(<?= $feat_image_url = wp_get_attachment_url( get_post_thumbnail_id() ); ?>); }
                        </style>
                        <div class="bg"></div>
                        <div class="excerpt">
                            <div class="top">

                                <?php
                                    $nombre = get_the_title();
                                    $nombreapellido = explode( ' ', $nombre );
                                ?>

                                <h1 class="nombre ui-title"><strong><?= $nombreapellido[0] ?></strong><?= $nombreapellido[1] ?></h1>
                                <h2 class="ciudad ui-help-text"><?php the_field( 'estado' ); ?></h2>
                            </div>
                            <div class="permalink ui-title wk-text-uppercase ui-text-secondary">VER HISTORIA</div>
                        </div>
                    </div>
                </div>
            
            <?php endwhile; wp_reset_query(); endif; ?>

        </div>
        
    </section>

    <div class="slider-historias-content">

         <?php 
                
            $args = array(
                'post_type'		=>	'post',
                'order'         => 'DESC'
            );
        
            $wp_query = new WP_Query( $args );
        
        ?>
            
        <?php if( $wp_query->have_posts() ) : $r = 0; while( $wp_query->have_posts() ) : $r++; $wp_query->the_post(); ?>
            
            <div id="historia-<?= $r ?>" class="slide">

                <section id="section-video" class="wk-section">
                    
                    <style id="css-video">
                        #historia-<?= $r ?> .video-thumbnail { background-image: url(<?php $thumbnail = get_field( 'video_thumbnail' ); echo $thumbnail['sizes']['large'] ?>); }
                    </style>
                    <a class="video-thumbnail" data-fancybox href="<?php the_field( 'video' ); ?>">
                        <div class="copy">
                            <div class="ui-title">Descubre la historia de <strong><?php the_title(); ?></strong> <span class="icon-play"><span class="fa fa-play"></span></span></div>
                        </div>
                    </a>

                </section>

                <div class="wk-wrap-900">
                    <section id="section-content" class="wk-section">
                        <div class="wk-section-wrap">
    
                            <div class="wk-cols">
                            
                                <div class="content-column content-column-left wk-col wk-text-right">
    
                                    <?php
                                        $nombre = get_the_title();
                                        $nombreapellido = explode( ' ', $nombre );
                                    ?>
    
                                    <h1 class="nombre ui-title"><strong><?= $nombreapellido[0] ?></strong><?= $nombreapellido[1] ?></h1>
                                    <?php the_field( 'profesion' ); ?>
                                    <?php the_field( 'extracto' ); ?>
                            
                                </div>
    
                                <div class="content-column content-column-center wk-col-2">
                                    <span class="ui-hr-vertical"></span>
                                </div>
                            
                                <div class="content-column content-column-right wk-col">
    
                                    <?php if( have_rows( 'parrafos' ) ) : while( have_rows( 'parrafos' ) ) : the_row( 'parrafos' ); ?>
                                        <?php the_sub_field( 'parrafo' ); ?>
                                    <?php endwhile; endif; ?>
                            
                                </div>
                            
                            </div>
    
                        </div>
                    </section>
                </div>

                <section id="section-quote" class="wk-section section-content">
                    <div class="wk-section-wrap">

                        <div class="quote"><?php the_field( 'quote' ); ?></div>

                    </div>
                </section>

                <section id="relacionados" class="wk-section">
                    <div class="wk-section-wrapp">

                        <div class="wk-cols">
                        
                            <!-- <div class="wk-col-1">
                                <div class="container">
                                    <p class="ui-title-big">
                                        <strong>CONOCE LAS HISTORIAS</strong><span>DE OTROS GANADORES</span>
                                    </p>
                                </div>
                            </div> -->
                        
                            <div class="wk-col">
                                
                                <div class="slider">

                                    <?php 
                                        $args = array(
                                            'post_type'		=>	'post',
                                            'order'         => 'DESC'
                                        );
                                        $wp_query = new WP_Query( $args );
                                    ?>
                                    
                                    <?php if( $wp_query->have_posts() ) : $r = 0; while( $wp_query->have_posts() ) : $r++; $wp_query->the_post(); ?>
                                    
                                        <div id="slide-<?= $post->post_name ?>" class="slide skew">
                                            <div class="content">
                                                <style id="slide-historia-nav-bg-<?= $r ?>">
                                                    #slide-<?= $post->post_name ?> .bg { background-image: url(<?= $feat_image_url = wp_get_attachment_url( get_post_thumbnail_id() ); ?>); }
                                                </style>
                                                <div class="bg"></div>
                                                <div class="excerpt">
                                                    <div class="top">

                                                        <?php
                                                            $nombre = get_the_title();
                                                            $nombreapellido = explode( ' ', $nombre );
                                                        ?>

                                                        <h1 class="nombre ui-title"><strong><?= $nombreapellido[0] ?></strong><?= $nombreapellido[1] ?></h1>
                                                        <h2 class="ciudad ui-help-text"><?php the_field( 'estado' ); ?></h2>
                                                    </div>
                                                    <div class="permalink ui-title wk-text-uppercase ui-text-secondary">VER HISTORIA</div>
                                                </div>
                                            </div>
                                        </div>
                                    
                                    <?php endwhile; wp_reset_query(); endif; ?>

                                </div><!-- slider historias nav-->
                            
                            </div>
                        
                        </div>

                    </div>
                </section>

            </div>

        <?php endwhile; wp_reset_query(); endif; ?>

    </div>       

</main>