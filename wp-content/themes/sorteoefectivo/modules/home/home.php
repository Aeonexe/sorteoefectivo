<section id="section-header-copy" class="wk-section">
    <div class="wk-section-wrap">

        <div class="wk-cols">
            <div class="content-column wk-col">
                <div class="container">
                    <h4 class="ui-title-extra-big">
                        <span class="title-a-1">¡Quiero ganar</span> 
                        <span class="title-a-2 ui-title-extra-big"><strong>$100,000</strong></span>
                        <span class="title-a-3">cada mes!</span>
                    </h4>
                    <h2 class="ui-title ui-text-main">
                        <strong class="title-b-1">Con el Sorteo Efectivo</strong> 
                        <span class="title-b-2">Bancoppel ahora es muy fácil</span>
                    </h2>
                </div>
            </div>
            <div class="content-column wk-col">
                <img width="300" src="<?php echo get_option('wk_custom_logo_alt'); ?>" alt="Sorteo Efectivo">
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


<section id="section-history-excerpt" class="wk-section">

    <?php $wp_query = new WP_Query( 'post_type=post&posts_per_page=3&order=ASC' ); ?>

    <div class="histories">
       
        <?php if( $wp_query->have_posts() ) : $r; while( $wp_query->have_posts() ) : $r++; $wp_query->the_post(); ?>
            
            <a id="history-<?= $post->post_name ?>" class="history" href="<?php the_permalink(); ?>" >
                <style id="css-history-<?= $post->post_name ?>">
                    #history-<?= $post->post_name ?>  { background-image: url(<?= $feat_image_url = wp_get_attachment_url( get_post_thumbnail_id() ); ?>); }
                </style>
                <div class="background"></div>
                <?php $nombre = get_the_title(); $nombreApellido = explode( ' ', $nombre ); ?>
                <div class="excerpt">
                    <div class="info">
                        <h1 class="name"><strong><?= $nombreApellido[0]; ?></strong><span><?= $nombreApellido[1]; ?></span> </h1>
                        <h2 class="state"><strong><?php the_field( 'estado' ); ?></strong></h2>
                    </div>
                    <span class="permalink">VER HISTORIA</span>
                </div>
            </a>
        
        <?php endwhile; wp_reset_query(); endif; ?>

    </div>

    <div class="share-links">
        <a href="#" class="facebook"><span class="fa fa-facebook"></span></a>
        <a href="#" class="twitter"><span class="fa fa-twitter"></span></a>
    </div>

</section>



<section id="section-video" class="wk-section">
    
    <style id="css-video">
        #section-video .video-thumbnail { background-image: url(<?php $thumbnail = get_field( 'video_thumbnail' ); echo $thumbnail['sizes']['large'] ?>); }
    </style>
    <a class="video-thumbnail" data-fancybox href="<?php the_field( 'video' ); ?>">
        <img src="<?php img_url('chevron-up.png'); ?>" alt="Up" class="chevron-left">
        <div class="gradient"></div>
        <div class="copy">
            <div class="ui-title">Descubre la historia de <strong><?php the_title(); ?></strong> <span class="icon-play"><span class="fa fa-play"></span></span></div>
        </div>
    </a>

</section>

<section id="section-content" class="wk-section">
    <div class="wk-section-wrap">
        
        <div class="wk-cols">
            
            <div class="content-column-left wk-col">
                <?php $nombre = get_the_title(); $nombreApellido = explode( ' ', $nombre ); ?>
                <h1 class="ui-title-big"><strong><?= $nombreApellido[0]; ?></strong><span><?= $nombreApellido[1]; ?></span> </h1>
                <h6 class="ui-label-text"><?php the_field( 'ocupacion' ); ?></h6>
            </div>

            <div class="content-column">
                <span class="hr-vertical wk-d"></span>
                <hr class="wk-m">
            </div>
        
            <div class="content-column-right wk-col">
                <?php the_field( 'parrafo' ); ?>
            </div>
        
        </div>

        <?php if( have_rows( 'bloque' ) ) : ?>
            <div class="block">
        
                <?php while( have_rows( 'bloque' ) ) : the_row( 'bloque' ); ?>

                    <?php if( get_row_layout() == 'columnas')  : ?>

                        <div class="columns">
                            <div class="wk-cols">
                                <div class="content-column wk-col">
                                    <?php the_sub_field( 'columna_derecha' ); ?>
                                </div>
                                <div class="content-column wk-col">
                                    <?php the_sub_field( 'columna_izquierda' ); ?>
                                </div>
                            </div>
                        </div>

                    <?php elseif( get_row_layout() == 'columna' ) : ?>
                        <div class="column">
                            <div class="content-column"><?php the_sub_field( 'columna' ); ?></div>
                        </div>
                    <?php endif; ?>
            
                <?php endwhile; ?>

            </div>
        <?php endif; ?>

    </div>
</section>

<section id="section-blockquote" class="wk-section">
    <div class="wk-section-wrap">

        <?php if( get_field( 'quote' ) ) : ?>
        
            <blockquote>
                <?php the_field( 'quote' ); ?>
            </blockquote>

        <?php endif; ?>

    </div>
</section>

<section id="photostack-1" class="photostack photostack-start">
    <div>

        <?php $gallery = get_field( 'galeria' ); ?>

        <?php foreach( $gallery as $image ) : ?>
            
            <figure>
                <a href="#" data-fancybox data-src="<?php echo $image['sizes']['large']; ?>" class="photostack-img"><img class="wk-img-responsive" src="<?php echo $image['sizes']['thumbnail']; ?>" alt="<?php echo $image['title']; ?>"/></a>
                <figcaption>
                    <h2 class="photostack-title"><?php echo $image['title']; ?></h2>
                </figcaption>
            </figure>

        <?php endforeach; ?>

        
        <!-- <figure>
            <a href="http://goo.gl/Ms7VDl" class="photostack-img"><img src="https://tympanus.net/Development/ScatteredPolaroidsGallery/img/7.jpg" alt="img07"/></a>
            <figcaption>
                <h2 class="photostack-title">Lovely Green</h2>
            </figcaption>
        </figure> -->
    </div>
</section>

<section id="section-related-histories" class="wk-section">

    <div class="wk-cols">
    
        <div class="wk-col-4 wk-flex">
            <h3 class="content-column ui-title">
                <span class="container">
                    <strong>CONOCE LAS<br>HISTORIAS</strong><br><span>DE OTROS</span><br><span>GANADORES</span>
                </span>
            </h3>
        </div>
    
        <div class="wk-col-8">

            <?php 

                $args = array(
                    'post_type'     => 'post',
                    'posts_per_page'=> '2',
                    'post__not_in'  => array( get_the_ID() ),
                );
            
                $wp_query = new WP_Query( $args ); 
                
            ?>

            <div class="histories">
            
                <?php if( $wp_query->have_posts() ) : $r; while( $wp_query->have_posts() ) : $r++; $wp_query->the_post(); ?>
                    
                    <a id="history-<?= $post->post_name ?>" class="history" href="<?php the_permalink(); ?>" >
                        <style id="css-history-<?= $post->post_name ?>">
                            #history-<?= $post->post_name ?>  { background-image: url(<?= $feat_image_url = wp_get_attachment_url( get_post_thumbnail_id() ); ?>); }
                        </style>
                        <div class="background"></div>
                        <?php $nombre = get_the_title(); $nombreApellido = explode( ' ', $nombre ); ?>
                        <div class="excerpt">
                            <div class="info">
                                <h1 class="name"><strong><?= $nombreApellido[0]; ?></strong><span><?= $nombreApellido[1]; ?></span> </h1>
                                <h2 class="state"><strong><?php the_field( 'estado' ); ?></strong></h2>
                            </div>
                            <span class="permalink">VER HISTORIA</span>
                        </div>
                    </a>
                
                <?php endwhile; wp_reset_query(); endif; ?>

            </div>
        </div>
    
    </div>

</section>

<section id="section-info" class="wk-section">
    <div class="wk-section-wrap">

        <div class="wk-cols">
        
            <div class="content-column-left wk-col-8">

                <h1 class="ui-title-extra-big"> <?php the_field( 'info_titulo1', 'option' ); ?><br> <strong><?php the_field( 'info_titulo2', 'option' ); ?></strong> </h1>
                
                <div class="ui-paragraph-big">
                    <?php the_field( 'info_contenido', 'option' ); ?>
                </div>
        
            </div>
        
            <div class="content-column-right wk-col-4">

                <?php $info_img = get_field( 'info_imagen', 'option' ); ?>
                <img class="wk-img-responsive" src="<?php echo $info_img['sizes']['large'] ?>" alt="<?php echo $info_img['alt']; ?>">
        
            </div>
        
        </div>



        <?php if( have_rows( 'info_pasos', 'option' ) ) : $r = 0; ?>

            <div class="steps">
                <div class="wk-cols">
               
                    <?php while( have_rows( 'info_pasos', 'option' ) ) : $r++; the_row( 'info_pasos', 'option' ); ?>
                    
                        <div class="content-column wk-col">
                            <span class="number"><?=$r?></span>
                            <?php the_sub_field( 'info_paso', 'option' ); ?>
                        </div>
                
                    <?php endwhile; ?>

                </div>
            </div>

        <?php endif; ?>

    </div>
</section>

