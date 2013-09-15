// Generated by CoffeeScript 1.6.3
(function() {
  $.widget('ui.smoothsnap', {
    _create: function() {
      var scrollAmount, setStep, startPosition,
        _this = this;
      startPosition = 0;
      this.element.on("slidestart", function(event, ui) {
        startPosition = ui.value;
        return setStep(_this.element, 1);
      });
      this.element.on("slide", function(event, ui) {
        if (scrollAmount(startPosition, ui.value) <= 10) {
          return setStep(_this.element, 1);
        } else if (scrollAmount(startPosition, ui.value) <= 50) {
          return setStep(_this.element, 10);
        } else {
          return setStep(_this.element, 50);
        }
      });
      scrollAmount = function(start, current) {
        return Math.abs(current - start);
      };
      return setStep = function(element, val) {
        return element.slider("option", "step", val);
      };
    }
  });

}).call(this);
