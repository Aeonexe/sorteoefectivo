//@prepros-prepend ../../vendor/fancybox/fancybox.js
//@prepros-prepend ../../vendor/slick/slick.js

//@prepros-prepend ../../wpkit/js/site.js


$('.slider').slick({
    autoplay: true,
    autoplaySpeed: 2000,
    dots: true,
    prevArrow: '<span class="slick-arrow slick-prev slick-class"><i class="fa fa-chevron-left"></i></span>',
    nextArrow: '<span class="slick-arrow slick-next slick-class"><i class="fa fa-chevron-right"></i></span>',
    fade: true,
    adaptiveHeight: true,
});


$('.slider-historias-nav').slick({
    asNavFor: '.slider-historias-content',
    slidesToShow: 3,
    focusOnSelect: true,
    centerMode: true,
    rows: false,
});

$('.slider-historias-nav-rels').slick({
    slidesToShow: 2,
    slidesToScroll: 1,
    // focusOnSelect: true,
    // centerMode: true,
    //rows: false,
});

$('.slider-historias-content').slick({
    asNavFor: '.slider-historias-nav',
    slidesToShow: 1,
    slidesToScroll: 1,
    fade: true,
    rows: false,
    arrows: false,
});

// Select all links with hashes
$('a[href*="#"]')
// Remove links that don't actually link to anything
.not('[href="#"]')
.not('[href="#0"]')
.click(function (event) {
    // On-page links
    if (
        location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '')
        &&
        location.hostname == this.hostname
    ) {
        // Figure out element to scroll to
        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
        // Does a scroll target exist?
        if (target.length) {
            // Only prevent default if animation is actually gonna happen
            event.preventDefault();
            $('html, body').animate({
                scrollTop: target.offset().top
            }, 1000, function () {
                // Callback after animation
                // Must change focus!
                var $target = $(target);
                $target.focus();
                if ($target.is(":focus")) { // Checking if the target was focused
                    return false;
                } else {
                    $target.attr('tabindex', '-1'); // Adding tabindex for elements not focusable
                    $target.focus(); // Set focus again
                };
            });
        }
    }
});