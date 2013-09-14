$ ->
  startPosition = 0

  scrollAmount = (current) ->
    Math.abs(current - startPosition)

  setStep = (val) ->
    $("#slider").slider("option", "step", val)

  $("#slider" ).slider(
    value:100
    min: 0
    max: 500
    step: 1
    start: (event, ui) ->
      startPosition = ui.value
      setStep(1)      
    slide: (event, ui) ->
      $("#amount" ).val( "$" + ui.value )
      if (scrollAmount(ui.value) <= 10)
        setStep(1)
      else if (scrollAmount(ui.value) <= 50)
        setStep(10)
      else
        setStep(50)
  )

  $("#amount").val("$" + $( "#slider" ).slider( "value" ))