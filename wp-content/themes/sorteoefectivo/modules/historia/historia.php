<section id="section-video" class="wk-section">
    
    <style id="css-video">
        #section-video .video-thumbnail { background-image: url(<?php $thumbnail = get_field( 'video_thumbnail' ); echo $thumbnail['sizes']['large'] ?>); }
    </style>
    <a class="video-thumbnail" data-fancybox href="<?php the_field( 'video' ); ?>">
        <img src="<?php img_url('chevron-up.png'); ?>" alt="Up" class="chevron-left">
        <div class="gradient"></div>
        <div class="copy">
            <div class="ui-title">
                <div class="container">
                    <span class="title">Descubre la historia de</span>
                    <strong class="title"><?php the_title(); ?></strong>
                </div>
                <span class="icon-play">
                    <i class="fa fa-play"></i>
                </span>
            </div>
        </div>
    </a>

    <div class="share-links">
        <a class="facebook" href="https://www.facebook.com/sharer/sharer.php?u=<?= get_permalink(); ?>" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=<?= get_permalink(); ?>','pagename','resizable,height=400,width=480'); return false;">
            <span class="fa fa-facebook"></span>
        </a>
        <a target="_blank" class="twitter" href="https://twitter.com/home?status=<?php bloginfo( 'url' ); ?>" onclick="window.open('https://twitter.com/home?status=<?php bloginfo( 'url' ); ?>,'pagename','resizable,height=400,width=480'); return false;">
            <span class="fa fa-twitter"></span>
        </a>
    </div>

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

<?php $gallery = get_field( 'galeria' ); ?>
<?php if( $gallery ) : ?> 

    <section id="photostack-1s" class="photostacks photostack-starts">
        <div class="slider">
            
            
            <?php foreach( $gallery as $image ) : ?>
            
            <figure class="slide">
                <a href="#" data-fancybox data-src="<?php echo $image['sizes']['large']; ?>" class="slider-img"><img class="wk-img-responsive" src="<?php echo $image['sizes']['large']; ?>" alt="<?php echo $image['title']; ?>"/></a>
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

<?php endif; ?>

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
