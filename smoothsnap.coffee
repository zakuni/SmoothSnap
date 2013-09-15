$.widget('ui.smoothsnap',
  _create: () ->
    element = @element
    startPosition = 0

    element.on("slidestart", (event, ui) ->
      startPosition = ui.value
      setStep(element, 1)
    )
    element.on("slide", (event, ui) ->
      if (scrollAmount(ui.value) <= 10)
        setStep(element, 1)
      else if (scrollAmount(ui.value) <= 50)
        setStep(element, 10)
      else
        setStep(element, 50)
    )

    scrollAmount = (current) ->
      Math.abs(current - startPosition)

    setStep = (element, val) ->
      element.slider("option", "step", val)
)