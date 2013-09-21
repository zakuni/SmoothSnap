$.widget('ui.smoothsnap',
  options:
    snapTo: [1, 10, 50]
  _create: () ->
    startPosition = 0
    snapTo = @options.snapTo.sort(
      (a, b) -> 
        return -1 if a < b
        return 1 if a > b
        return 0
    )
    
    @element.on("slidestart", (event, ui) =>
      startPosition = ui.value
      this._setStep(@element, snapTo[0])
    )
    @element.on("slide", (event, ui) =>
      for to, i in snapTo
        do (to, i) =>
          if i == 0
            if (this._scrollAmount(startPosition, ui.value) <= snapTo[i+1])
              this._setStep(@element, snapTo[i])
          else if i == snapTo.length-1
            if (snapTo[i] < this._scrollAmount(startPosition, ui.value))
              this._setStep(@element, snapTo[i])
          else
            if (snapTo[i] < this._scrollAmount(startPosition, ui.value) <= snapTo[i+1])
              this._setStep(@element, snapTo[i])
    )

  _scrollAmount: (start, current) ->
    Math.abs(current - start)

  _setStep: (element, val) ->
    element.slider("option", "step", val)
)