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
//= require jquery_ujs
//= require activestorage
//= require turbolinks
//= require foundation
//= require_tree .

$(document).ready(function() {

  //Form

  $('.input').on("focus blur", function() {
    if ($(this).val().length > 0 || $('.input').is(':focus')) {
      $(this).siblings().addClass('active');
      $(this).parent().addClass('active');
  
    } else {
      $(this).siblings().removeClass('active').addClass('not');
      $(this).parent().removeClass('active').addClass('not');
    }
  
    if ($(this).val().length < 2 && $('.input').is(':focus') != true && $(this).is(':invalid') || $(this).is(':invalid') && $('.input').is(':focus') != true) {
      $(this).parent().addClass('invalid');
      $(this).siblings().addClass('invalid');
    } else {
      $(this).parent().removeClass('invalid');
      $(this).siblings().removeClass('invalid');
    }
  
    if ($(this).val().length > 0 && $(this).is(':valid') && $('.input').is(':focus') != true) {
      $(this).parent().addClass('valid');
      $(this).siblings().addClass('valid');
    } else {
      $(this).parent().removeClass('valid');
      $(this).siblings().removeClass('valid');
    }
  
  });
  
  $('#d').change(enableBtn);
  $('.input').blur(enableBtn);
  
  function enableBtn() {
    if ($('#d').is(':checked') == false || $('.input').parent('.input-wrap').hasClass('invalid') == true || $('.input').val().length < 2) {
      $("#confirm").prop("disabled", true);
    } else {
      $("#confirm").prop("disabled", false);
    }
  }
  enableBtn();
  
  $('#confirm').click(function() {
    $('form').submit(function(event) {
      $('.card').addClass('end');
      $('.ending').addClass('showed');
      event.preventDefault();
    });
  });
});



$(function(){ $(document).foundation(); });
