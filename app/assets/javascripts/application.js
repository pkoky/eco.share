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

//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {
  $('.slider').slick({
    // infinite: true, //スライドのループ有効化
    arrows: false, //矢印非表示
    fade: true, //フェードの有効化
    draggable: false //ドラッグ操作の無効化
  });
  $('.slider-1').slick({
    // infinite: true, //スライドのループ有効化
    slidesToShow: 5, //表示するスライドの数
    focusOnSelect: true, //フォーカスの有効化
    asNavFor: '.slider', //thumbnailクラスのナビゲーション
  });
});
// https://www.jungleocean.com/programming/190201jquery-slick