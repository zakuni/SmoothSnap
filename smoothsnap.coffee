$.widget('ui.smoothsnap',
  _create: () ->
    element = @element
    startPosition = 0

    element.slider(
      value:200
      min: 0
      max: 500
      step: 1
      start: (event, ui) ->
        startPosition = ui.value
        setStep(element, 1)      
      slide: (event, ui) ->
        $("#amount" ).val(ui.value )
        if (scrollAmount(ui.value) <= 10)
          setStep(element, 1)
        else if (scrollAmount(ui.value) <= 50)
          setStep(element, 10)
        else
          setStep(element, 50)
    )

    $("#amount").val(element.slider("value"))

    scrollAmount = (current) ->
      Math.abs(current - startPosition)

    setStep = (element, val) ->
      element.slider("option", "step", val)
)