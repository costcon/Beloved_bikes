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


// loading画面フェードアウト
$(window).load(function () {
    // 消えるタイミングはお好みで
    $('#loading').delay(1500).fadeOut(300);
});
// 10秒待っても読み込みが終わらない時は強制的にローディング画面をフェードアウト
function stopload(){
    $('#loading').delay(1000).fadeOut(700);
}
setTimeout('stopload()',10000);