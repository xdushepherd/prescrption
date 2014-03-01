# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('select').not('select[name="prescri[gender]"]').select2({ width: 'resolve' })
  total_price = 0
  $('body').on 'change','input[type="number"]',->
  	id = $(@).parent().siblings().first().children('select').find("option:selected").val()
  	$.ajax
  	  type: "GET"
  	  url:  "/price"
  	  data: { id: id }
  	  success: (data)=>
  	  	console.log data
  	  	total_price += parseFloat(data)
  	  	$('#total_price').text(total_price.toFixed(2))