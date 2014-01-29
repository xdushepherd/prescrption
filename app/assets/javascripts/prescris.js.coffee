# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('select').not('select[name="prescri[gender]"]').select2({ width: 'resolve' })
  $('tr td:nth(1)').change ->
  	$(@).closest