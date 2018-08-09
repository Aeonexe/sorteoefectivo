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

    <?php $wp_query = new WP_Query( 'post_type=post&posts_per_page=3' ); ?>

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
        
        <?php endwhile; endif; ?>

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
        <div class="gradient"></div>
        <div class="copy">
            <div class="ui-title">Descubre la historia de <strong><?php the_title(); ?></strong> <span class="icon-play"><span class="fa fa-play"></span></span></div>
        </div>
    </a>

</section>

