$.widget('ui.smoothsnap',
  _create: () ->
    startPosition = 0

    @element.on("slidestart", (event, ui) =>
      startPosition = ui.value
      this._setStep(@element, 1)
    )
    @element.on("slide", (event, ui) =>
      if (this._scrollAmount(startPosition, ui.value) <= 10)
        this._setStep(@element, 1)
      else if (this._scrollAmount(startPosition, ui.value) <= 50)
        this._setStep(@element, 10)
      else
        this._setStep(@element, 50)
    )

  _scrollAmount: (start, current) ->
    Math.abs(current - start)

  _setStep: (element, val) ->
    element.slider("option", "step", val)
)