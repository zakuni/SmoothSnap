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
      if (this._scrollAmount(startPosition, ui.value) <= snapTo[1])
        this._setStep(@element, snapTo[0])
      
      if (snapTo[1] < this._scrollAmount(startPosition, ui.value) <= snapTo[2])
        this._setStep(@element, snapTo[1])

      if (snapTo[2] < this._scrollAmount(startPosition, ui.value))
        this._setStep(@element, snapTo[2])
    )

  _scrollAmount: (start, current) ->
    Math.abs(current - start)

  _setStep: (element, val) ->
    element.slider("option", "step", val)
)