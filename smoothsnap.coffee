$.widget('ui.smoothsnap',
  _create: () ->
    startPosition = 0

    @element.on("slidestart", (event, ui) =>
      startPosition = ui.value
      setStep(@element, 1)
    )
    @element.on("slide", (event, ui) =>
      if (scrollAmount(startPosition, ui.value) <= 10)
        setStep(@element, 1)
      else if (scrollAmount(startPosition, ui.value) <= 50)
        setStep(@element, 10)
      else
        setStep(@element, 50)
    )

    scrollAmount = (start, current) ->
      Math.abs(current - start)

    setStep = (element, val) ->
      element.slider("option", "step", val)
)