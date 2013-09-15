$ ->
  $("#slider").slider(
    value:200
    min: 0
    max: 500
    step: 1
    slide: (event, ui) ->
      $("#amount" ).val(ui.value )
  ).smoothsnap()
  
  $("#amount").val($("#slider").slider("value"))