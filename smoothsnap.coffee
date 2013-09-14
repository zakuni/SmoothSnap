$ ->
  startPosition = 0
  $("#slider" ).slider(
    value:100
    min: 0
    max: 500
    step: 1
    start: (event, ui) ->
      startPosition = ui.value
      $("#slider").slider( "option", "step", 1)
    slide: (event, ui) ->
      $( "#amount" ).val( "$" + ui.value )
      if (Math.abs(ui.value - startPosition) < 10)
        $("#slider").slider("option", "step", 1)
      else if (Math.abs(ui.value - startPosition) < 50)
        $("#slider").slider("option", "step", 10)
      else if (Math.abs(ui.value - startPosition) >= 50)
        $( "#slider").slider("option", "step", 50)
  )
  $("#amount").val("$" + $( "#slider" ).slider( "value" ))