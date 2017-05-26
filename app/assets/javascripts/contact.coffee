# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
this.initMap = ->
  orgLatLng = {lat: -38.0080773, lng: -57.5536823}
  map = new google.maps.Map($('#map').get(0), {
    center: orgLatLng,
    zoom: 15,
    minZoom: 10,
    maxZoom: 18,
    mapTypeControl: false
  })
  new google.maps.Marker({
    position: orgLatLng,
    map: map
  })
