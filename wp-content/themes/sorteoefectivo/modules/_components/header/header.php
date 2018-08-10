<header id="main-header" class="wk-section">
    <div class="wk-cols">
        <div class="content-column-left wk-col">
            <a href="<?php bloginfo( 'url' ); ?>" id="logo-bancoppel" class="logo">
                <img width="400" src="<?php echo get_option('wk_custom_logo_main'); ?>" alt="Bancoppel">
            </a>
        </div>
        <div class="content-column-right wk-col">
            <a href="<?php bloginfo( 'url' ); ?>" id="logo-sorteo-efectivo" class="logo">
                <?php if( !is_home() ) : ?>
                    <img width="160" src="<?php echo get_option('wk_custom_logo_alt'); ?>" alt="Sorteo Efectivo">
                <?php endif; ?>
            </a>
        </div>
    </div>
</header>