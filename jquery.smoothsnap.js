(function( $ ){
  $.fn.smoothsnap = function() {
    $(window).scroll(function(){
        $("body").animate({scrollTop: 200}, 1000);
    });
  };
}( jQuery ));
