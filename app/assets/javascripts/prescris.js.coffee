# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  total_price = 0
  # $('select[name="drug[]"]').select2({ width: 'resolve' })
  $('#prescri_drug1').change -> 
    $.ajax
      type: "GET"
      url: "/price"
      data: {id: $(@).val()}
      success: (data)->
      	$('#drug1_price').text(data)
  $('#prescri_drug2').change -> 
    $.ajax
      type: "GET"
      url: "/price"
      data: {id: $(@).val()}
      success: (data)->
      	$('#drug2_price').text(data)
  $('#prescri_drug3').change -> 
    $.ajax
      type: "GET"
      url: "/price"
      data: {id: $(@).val()}
      success: (data)->
      	$('#drug3_price').text(data)
  $('#prescri_drug4').change -> 
    $.ajax
      type: "GET"
      url: "/price"
      data: {id: $(@).val()}
      success: (data)->
      	$('#drug4_price').text(data)
  $('#prescri_amount1').change ->
  	data = parseInt($('#drug1_price').text())*$(@).val()
  	$('#drug1_total_price').text(data)
  $('#prescri_amount2').change ->
  	data = parseInt($('#drug2_price').text())*$(@).val()
    
  	$('#drug2_total_price').text(data)
  $('#prescri_amount3').change ->
  	data = parseInt($('#drug3_price').text())*$(@).val()
  	$('#drug3_total_price').text(data)
  $('#prescri_amount4').change ->
  	data = parseInt($('#drug4_price').text())*$(@).val()
  	$('#drug4_total_price').text(data)
  $('#AddDrug').click ->
    $('tbody').append($('tbody tr:first-child').clone(true))
  $(".DeleteDrug").click ->
    $(@).closest('tr').remove()
