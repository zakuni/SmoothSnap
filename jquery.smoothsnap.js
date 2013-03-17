(function( $ ){
  $.fn.smoothsnap = function() {
    $(window).scroll(function(){
      $("html,body").animate({scrollTop: 200}, 1000);
    });
  };
}( jQuery ));
