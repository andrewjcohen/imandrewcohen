$(document).ready(function($){
  function removeEverything() {
    $('.main-nav-menu').removeClass('visible').one('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend',function(){
      $('body').removeClass('overflow-hidden');
    });

    $('.hamburgers').removeClass('is-clicked');
  }

  function addEverything() {
    $('.main-nav-menu').addClass('visible').one('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend',function(){
      $('body').addClass('overflow-hidden');
    });
  }

  $('.mobile-nav-trigger').on('click', function(){
    $('.hamburgers').toggleClass('is-clicked');

    if( $('.main-nav-menu').hasClass('visible')){
      removeEverything();
    } else {
      addEverything();
    }
  });

  $('.main-nav-menu, .main-nav-menu li a').on('click', function(){
    removeEverything();
  });

  $(function() {
    $('a[href*=#]:not([href=#])').click(function() {
      if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
        if (target.length) {
          $('html,body').animate({
            scrollTop: target.offset().top
          }, 500);
          return false;
        }
      }
    });
  });
});

