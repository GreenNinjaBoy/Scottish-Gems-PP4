function initMap() {
    var input = document.getElementById('search-input');
    if (input) { // Check if the input element exists
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

            // Set the place
            document.getElementById('add-form-title').textContent = place.name;
            document.getElementById('add-form-address').textContent = place.formatted_address;
        });
    }
}

document.addEventListener('DOMContentLoaded', (event) => {
    initMap(); // Call initMap after the DOM is fully loaded

    document.getElementById('share-btn').addEventListener('click', function() {
        var placeName = document.getElementById('add-form-title').textContent;
        var placeAddress = document.getElementById('add-form-address').textContent;
        var photoUrl = document.getElementById('photo').src;
        var regionId = document.getElementById('region-select').value; // Get the selected region ID

        fetch('/gem_posts/create_gems/', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                title: placeName,
                location: placeAddress, // Include the location
                photo_url: photoUrl,
                region_id: regionId,
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

    fetch('/api/regions/')
    .then(response => response.json())
    .then(regions => {
        const select = document.querySelector('#region-select');  // Replace with your select element's ID
        regions.forEach(region => {
            const option = document.createElement('option');
            option.value = region.id;
            option.textContent = region.name;
            select.appendChild(option);
        });
    })
    .catch(error => console.error('Error:', error));
});
