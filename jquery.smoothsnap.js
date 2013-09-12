(function( $ ){
  $.fn.smoothsnap = function() {
//    $(window).scroll(function(event){
//        event.preventDefault();
//        return false;
//      $("html,body").animate({scrollTop: 200}, 1000);
//    });

    window.onmousewheel = document.onmousewheel = function(e) {
      e = e || window.event;
        if (e.preventDefault)
            e.preventDefault();
        e.returnValue = false;
    };
  };
}( jQuery ));
