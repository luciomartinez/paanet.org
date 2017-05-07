# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  backgrounds = [
    'url("/assets/slide_1.jpg")',
    'url("/assets/slide_2.jpg")',
    'url("/assets/slide_3.jpg")'
  ]
  current = 0

  setInterval ->
    if (current == backgrounds.length)
      current = -1
    $('#home-tile').css('background-image', backgrounds[ ++current ])
  , 10000
