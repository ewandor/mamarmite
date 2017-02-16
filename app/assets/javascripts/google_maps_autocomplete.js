$(document).ready(function() {
  var cook_address = $('#cook_address').get(0);

  if (cook_address) {
    var autocomplete = new google.maps.places.Autocomplete(cook_address, { types: ['geocode'] });
    google.maps.event.addDomListener(cook_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});