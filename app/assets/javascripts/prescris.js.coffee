# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('select').not('select[name="prescri[gender]"]').select2({ width: 'resolve' })
  $('select').not('select[name="prescri[gender]"]').change ->
  	$.ajax
  	  type: "GET"
  	  url:  "/price"
  	  data: {id: $(@).val()}
  	  success: (data)->
  	  	console.log $(@).parent()