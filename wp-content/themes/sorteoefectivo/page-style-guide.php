<?php if( get_option( 'option_private_site' ) ) { if( ! is_user_logged_in() ) { get_template_part( 'wpkit/inc/login' ); return true; } }

/**
*
* Styleguide 
*
* @see https://github.com/google/code-prettify
*
* @package WPKit
* @author ALUMIN
* @copyright Copyright (C) Alumin.Agency
* @version WPKIT 3.0
*
*/

get_header(); ?>
                             
	<section id="init" class="wk-section">

        <div class="wk-section-wrap">

            <h3 class="ui-title">Guía de estílos <?php bloginfo( 'name' ); ?></h3>

            <p>En esta guía de estílos se muestran los elementos gráficos que componene la estructura del sitio
            <?php bloginfo('name'); ?> por diseño.</p>

            <p>Cualquier implementación al diseño y maquetación deberá seguir estos elementos para mantener la escencia
            e identidad del sitio en todo momento.</p>

            <p>Los elementos de html en esta guia de estílo aunque no presentan una estructura de componentes web deberán tratarse como "componentes", dichos componentes
            contienen bloques de html que en conjunto con estilos de css forman el diseño de cada elemento.</p>

            <h3 class="ui-title">Nomenclatura</h3>

            <p>Las clases que conforman esta guía de estílos deberán incluir el prefijo <mark>ui-</mark> para distinguirlas como las clases que componen los elementos de diseño del sitio, p.ej. <mark>.ui-title</mark> <mark>.ui-elemento</mark></p>

            <p>Las adiciones que se hagan a esta guía de estilos deberan incluirse únicamente en el documento en scss/_ui.scss Es decir todos los selectores que contengan el prefijo ui deberán incluirse en dicho archivo.</p>

            <p>Los estílos que se utilizan para la estructura general del sitio, scripts u otras acciones deberán incluir un prefijo distinto o no incluirlo.</p>

            <p>Para la funcionalidad añadida mediante scripts y que requiera de un selector de algún elemento de html se recomienda añadir una clase específica para dicho script. Este selector no deberá compartir/incluir clases de la guía de estílos (con el prefijo <mark>ui</mark>) o con clases relacionadas al layout / estructura del sitio.</p>

        </div>

    </section>

    <section id="ui-titles" class="wk-section">

        <div class="wk-section-wrap">

            <article>

                <h6 class="ui-title">Encabezados / Headings</h6>

                    El estílo de los encabezados <strong>no depende de elementos de html.</strong><br>

                    Deberás considerar las etiquetas h1, h2 , h3, h4 ,h5 y h6 solo para optimización SEO. Para estílos unicamente deberas considrar las clases listadas
                    a continuación.


            </article>

            <h1 class="ui-title-mega-big">TÍTULO M BIG</h1>

            <pre class="prettyprint">
                <code>
                    <?= htmlspecialchars('
    <h1 class="ui-title-mega-big">TÍTULO M BIG</h1>
                    '); ?>
                </code>
            </pre>

            <h1 class="ui-title-extra-big">Título X Big</h1>

            <pre class="prettyprint">
                <code>
                    <?= htmlspecialchars('
    <h1 class="ui-title-extra-big">Título X Big</h1>
                    '); ?>
                </code>
            </pre>

            <h1 class="ui-title-big">Título Big</h1>

            <pre class="prettyprint">
                <code>
                    <?= htmlspecialchars('
    <h1 class="ui-title-big">Título Big</h1>
                    '); ?>
                </code>
            </pre>

            <h1 class="ui-title">Título</h1>

            <pre class="prettyprint">
                <code>
                    <?= htmlspecialchars('
    <h1 class="ui-title">Título</h1>
                    '); ?>
                </code>
            </pre>

            <h1 class="ui-title-small">Título Small</h1>

            <pre class="prettyprint">
                <code>
                    <?= htmlspecialchars('
    <h1 class="ui-title-small">Título Small</h1>
                    '); ?>
                </code>
            </pre>

            <p class="ui-help-text"><strong>Help</strong>Text</p>

            <pre class="prettyprint">
                <code>
                    <?= htmlspecialchars('
    <p class="ui-help-text"><strong>Help</strong>Text</p>
                    '); ?>
                </code>
            </pre>

            <p>Paragraph text</p>

            <pre class="prettyprint">
                <code>
                    <?= htmlspecialchars('
    <p>Paragraph text 14px</p>
                    '); ?>
                </code>
            </pre>

            <p class="ui-paragraph-big">Paragraph text Big</p>

            <pre class="prettyprint">
                <code>
                    <?= htmlspecialchars('
    <p class="ui-paragraph-big">Paragraph text big 20px</p>
                    '); ?>
                </code>
            </pre>

            <p class="ui-label-text">Label text</p>

            <pre class="prettyprint">
                <code>
                    <?= htmlspecialchars('
    <p class="ui-label-text">Label text</p>
                    '); ?>
                </code>
            </pre>

        </div>

    </section>

    <section class="wk-section">
        <div class="wk-section-wrap">

            <h6 class="ui-title-big">Textos</h6>

            <p>Esta guía incluye estílos predefinidos para situaciones comunes de texto como: peso, color, decoración, alineación</p>

            <p>Abajo se listan las clases que modifican la forma en que se visualiza el texto.</p>

            <p class="ui-title">Color de texto</p>

            <p>Para modificar la paleta de color será necesario modificar los valores de las variables que definen cada color en scss/_vars.scss</p>

            <p>Existen dos sets de colores, los colores principales definidos como <strong class="ui-text-main">Main</strong> y <strong class="ui-text-secondary">Secondary</strong></p>

            <span class="ui-text-main">Text main</span>
            <span class="ui-text-secondary">Text secondary</span>

            <pre class="prettyprint">
                <code>
                    <?= htmlspecialchars('
    <p class="ui-text-main">Text main</p>
    <p class="ui-text-secondary">Text secondary</p>
                    '); ?>
                </code>
            </pre>

            <p>El segundo set de colores son complementarios</p>

            <span class="ui-text-red">Text red</span>
            <span class="ui-text-gold">Text gold</span>
            <span class="ui-text-white">Text white</span>
            <span class="ui-text-black">Text black</span>
            <span class="ui-text-black">Text black</span>
            <span class="ui-text-black">Text black</span>

            <pre class="prettyprint">
                <code>
                    <?= htmlspecialchars('
    <p class="ui-text-red">Text red</p>
    <p class="ui-text-gold">Text gold</p>
    <p class="ui-text-white">Text white</p>
    <p class="ui-text-black">Text black</p>
                    '); ?>
                </code>
            </pre>

        </div>
    </section>

    <section id="botones" class="wk-section">
        <div class="wk-section-wrap">

            <h3 class="ui-title-big">Botónes</h3>

            <p>Es posible añadir un set de botónes basados en los colores principales.</p>
            <p>Además es posible crear botónes a partir de colores complementarios al template:</p>

            <h3 class="ui-title">Uso</h3>

            <pre class="prettyprint">
                <code>
                    <?= htmlspecialchars('
    .ui-button-[ $ghost ]-[ $color ] { 
        // estílos
    }
                    '); ?>
                </code>
            </pre>

            <h3 class="ui-title">Parámetros</h3>

            <p><strong>$ghost</strong></p>
            <p>(opcional) Muestra un botón con outline sin fondo. </p>

            <p><strong>$color</strong></p>
            <p>(opcional) Muestra el botón con un color específico. Colores disponibles: main (color principal), secondary (color secundario), red, yellow, white, black, brown, pink, blue, gray</p>

            <h3 class="ui-title">Ejemplos</h3>

            <a href="#" class="ui-button">Botón</a>
            <a href="#" class="ui-button-secondary">Botón</a>
            <a href="#" class="ui-button-red">Botón</a>
            <a href="#" class="ui-button-yellow">Botón</a>
            <a href="#" class="ui-button-white">Botón</a>
            <a href="#" class="ui-button-ghost">Botón</a>
            <a href="#" class="ui-button-ghost-secondary">Botón</a>
            <a href="#" class="ui-button-ghost-red">Botón</a>
            <a href="#" class="ui-button-ghost-yellow">Botón</a>
            <a href="#" class="ui-button-ghost-white">Botón</a>

            <pre class="prettyprint">
                <code>
                    <?= htmlspecialchars('
    <a href="#" class="ui-button">Botón</a>
    <a href="#" class="ui-button-main">Botón</a>
    <a href="#" class="ui-button-secondary">Botón</a>
    <a href="#" class="ui-button-red">Botón</a>
    <a href="#" class="ui-button-yellow">Botón</a>
    <a href="#" class="ui-button-white">Botón</a>

    // Ghost
    <a href="#" class="ui-button-ghost">Botón</a>
    <a href="#" class="ui-button-ghost-secondary">Botón</a>
    <a href="#" class="ui-button-ghost-red">Botón</a>
    <a href="#" class="ui-button-ghost-yellow">Botón</a>
    <a href="#" class="ui-button-ghost-white">Botón</a>
                    '); ?>
                </code>
            </pre>
            

        </div>
    </section>

<?php get_footer(); ?>
