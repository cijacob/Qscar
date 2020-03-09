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
//= require foundation
//= require_tree .
//= require header

document.addEventListener('DOMContentLoaded', (event) => {
  $('.section_link a').on("click",function (e) {
   
    e.preventDefault();

    var target = this.hash,
        $target = $(target);


    $('html, body').stop().animate( {
      'scrollTop': $target.offset().top-40
    }, 900, 'swing', function () {
      window.location.hash = target;
    } );

});
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

document.addEventListener('DOMContentLoaded', (event) => {
  $('.title_head span').on('click', function(e){
    e.preventDefault();
    var content = $(this).data('content'); 
    $(".innner_content_category:not('.hide')").stop().fadeOut('fast', function(){
      $(this).addClass('hide'); 
      $('.innner_content_category[data-content="' + content + '"]').fadeIn('slow').removeClass('hide');
    })
  })
})

$(function(){ $(document).foundation(); });


(function () {
  $(document).ready(function () {
    var qscarServices;
    qscarServices = {
      index: 0,
      nextScreen: function () {
        if (this.index < this.indexMax()) {
          this.index++;
          return this.updateScreen();
        }
      },
      prevScreen: function () {
        if (this.index > 0) {
          this.index--;
          return this.updateScreen();
        }
      },
      updateScreen: function () {
        this.reset();
        this.goTo(this.index);
        return this.setBtns();
      },
      setBtns: function () {
        var  $nextBtn, $prevBtn;
        $nextBtn = $('.next-screen');
        $prevBtn = $('.prev-screen');
        if (qscarServices.index === qscarServices.indexMax()) {
          $nextBtn.prop('disabled', true);
          $prevBtn.prop('disabled', false);
        } else if (qscarServices.index === 0) {
          $nextBtn.prop('disabled', false);
          $prevBtn.prop('disabled', true);
        } else {
          $nextBtn.prop('disabled', false);
          $prevBtn.prop('disabled', false);
        }
      },
      goTo: function (index) {
        $('.screen').eq(index).addClass('active');
        return $('.dot').eq(index).addClass('active');
      },
      reset: function () {
        return $('.screen, .dot').removeClass('active');
      },
      indexMax: function () {
        return $('.screen').length - 1;
      },
      closeModal: function () {
        $('.qscar-services, .shade').removeClass('reveal');
        return setTimeout(() => {
          $('.qscar-services, .shade').removeClass('show');
          this.index = 0;
          return this.updateScreen();
        }, 200);
      },
      openModal: function () {
        $('.qscar-services, .shade').addClass('show');
        setTimeout(() => {
          return $('.qscar-services, .shade').addClass('reveal');
        }, 200);
        return this.updateScreen();
      } };

    $('.next-screen').click(function () {
      return qscarServices.nextScreen();
    });
    $('.prev-screen').click(function () {
      return qscarServices.prevScreen();
    });
    $('.close').click(function () {
      return qscarServices.closeModal();
    });
    $('.open-qscar-services').click(function () {
      return qscarServices.openModal();
    });
    qscarServices.openModal();

    return $(document).keydown(function (e) {
      switch (e.which) {
        case 37:
          // left
          qscarServices.prevScreen();
          break;
        case 38:
          // up
          qscarServices.openModal();
          break;
        case 39:
          // right
          qscarServices.nextScreen();
          break;
        case 40:
          // down
          qscarServices.closeModal();
          break;
        default:
          return;}

      e.preventDefault();
    });
  });

}).call(this);

