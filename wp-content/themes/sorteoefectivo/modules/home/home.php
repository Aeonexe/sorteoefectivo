<section id="section-header-copy" class="wk-section">
    <div class="wk-section-wrap">

        <div class="wk-cols">
            <div class="content-column wk-col">
                <div class="container">
                    <h4 class="ui-title-extra-big">
                        <span class="title-a-1">¡Quiero ganar</span> 
                        <span class="title-a-2 ui-title-extra-big"><strong>$100,000!</strong></span>
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
                <p class="ui-title-big"><a target="_blank" href="https://www.bancoppel.com/sorteo_bcopp/index.html" class="ui-button-ghost-main"><strong>¡Participa!</strong></a></p>
                
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
        <a class="facebook" href="https://www.facebook.com/sharer/sharer.php?u=<?= get_permalink(); ?>" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=<?= get_permalink(); ?>','pagename','resizable,height=400,width=480'); return false;">
            <span class="fa fa-facebook"></span>
        </a>
        <a class="twitter" href="https://twitter.com/home?status=<?php bloginfo( 'url' ); ?>" onclick="window.open('https://twitter.com/home?status=Conoce las historias de tres ganadores del Sorteo Efectivo BanCoppel y ¡participa por $100,000! www.sorteoefectivo.com','pagename','resizable,height=400,width=480'); return false;">
            <span class="fa fa-twitter"></span>
        </a>
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

