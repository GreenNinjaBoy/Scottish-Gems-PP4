function initMap() {
    var input = document.getElementById('search-input');
    var autocomplete = new google.maps.places.Autocomplete(input);
    autocomplete.setFields(['address_components', 'geometry', 'icon', 'name', 'photos']);
    autocomplete.addListener('place_changed', function() {
    var place = autocomplete.getPlace();
    if (!place.geometry) {
        window.alert("No details available for input: '" + place.name + "'");
        return;
    }

    if (place.photos) {
        var photoUrl = place.photos[0].getUrl({maxWidth: 400, maxHeight: 400});
        document.getElementById('photo').src = photoUrl;
    }

      // Set the place details
    document.getElementById('add-form-title').textContent = place.name;
    document.getElementById('add-form-address').textContent = place.formatted_address;
    });
}

document.getElementById('share-btn').addEventListener('click', function() {
    var placeName = document.getElementById('add-form-title').textContent;
    var placeAddress = document.getElementById('add-form-address').textContent;
    var photoUrl = document.getElementById('photo').src;

    fetch('/gem_posts/create_gems/', {
    method: 'POST',
    headers: {
        'Content-Type': 'application/json',
    },
    body: JSON.stringify({
        author: placeName, // Changed from 'name'
        location: placeAddress, // Changed from 'address'
        photo_url: photoUrl, // Changed from 'photo'
    }),
    })
    .then(response => response.json())
    .then(data => {
    console.log('Success:', data);
    })
    .catch((error) => {
        console.error('Error:', error);
    });
});