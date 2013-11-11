$ ->
  $("#hslider").slider(
    value:200
    min: 0
    max: 500
    step: 1
    slide: (event, ui) ->
      $("#hamount" ).val(ui.value )
  ).smoothsnap()
  $("#hamount").val($("#hslider").slider("value"))

  $("#vslider").slider(
    value:200
    min: 0
    max: 500
    step: 1
    orientation: "vertical"
    slide: (event, ui) ->
      $("#vamount" ).val(ui.value )
  ).smoothsnap()  
  $("#vamount").val($("#vslider").slider("value"))