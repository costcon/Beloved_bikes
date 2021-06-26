// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery.raty.js
//= require underscore
//= require gmaps/google


$(function() {
    $('.top').slick({
        dots: true,
        autoplay: true,
        autoplaySpeed: 3000,
        speed: 1500,
        infinite: true,
        fade: true,
        cssEase: 'linear'
    });
});

$(function() {
    $('.bike_images').slick({
        dots: true,
        autoplay: true,
        autoplaySpeed: 3000,
        speed: 500,
        infinite: true,
        fade: true,
        cssEase: 'linear'
    });
});

$(".fadein").css("visibility","hidden").css("opacity","0");

// .targetのついた画像をスクロールに合わせfadeIn
$(window).on("load scroll resize", function(){
    $(".fadein").each(function(){
        var imgPos = $(this).offset().top;
        var scroll = $(window).scrollTop();
        var windowHeight = $(window).height();
        if (scroll > imgPos - windowHeight + windowHeight / 5){
            // ここに処理を書く
            $(this).css("visibility","visible")
            $(this).animate({opacity: 1}, 300);  
        }
    });
});