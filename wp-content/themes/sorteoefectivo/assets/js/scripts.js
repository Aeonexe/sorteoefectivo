//@prepros-prepend ../../vendor/fancybox/fancybox.js
//@prepros-prepend ../../vendor/slick/slick.js
//@prepros-prepend ../../wpkit/js/site.js

$('.slider').slick();


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