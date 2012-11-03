# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  boston = new google.maps.LatLng 42.3583, -71.0603
  map = new google.maps.Map $("#garden_map")[0],
    zoom: 15
    mapTypeId: google.maps.MapTypeId.ROADMAP

  if navigator.geolocation
    navigator.geolocation.getCurrentPosition ((position) ->
        map.setCenter new google.maps.LatLng(position.coords.latitude, position.coords.longitude)
      ), (->
        alert("Browser doesn't support geolocation. Assuming you're in Boston.")
        map.setCenter boston
      )
  else
    alert("Browser doesn't support geolocation. Assuming you're in Boston.")
    map.setCenter boston

  $.get "/gardens.json", (gardens) ->
    gardens.forEach (garden) ->
      marker = new google.maps.Marker
        position: new google.maps.LatLng(garden.position[0], garden.position[1])
        title: garden.title
      marker.setMap map