// Get references to the HTML elements that will be used in the script.
const searchInput = document.getElementById("search-input");
const latitudeField = document.getElementById("latitude-field");
const longitudeField = document.getElementById("longitude-field");
const googlePlaceIdField = document.getElementById("googlePlaceIdField");
const nameField = document.getElementById("add-form-title");
const addressField = document.getElementById("add-form-address");

// Get references to the hidden fields in the form.
const titleField = document.getElementById("title-field");
const addressFieldForm = document.getElementById("address-field");
const contentField = document.getElementById("content-field");

// Function to initialize the Google Places autocomplete functionality.
function initAutocomplete() {
    // Define the geographical bounds for the autocomplete search.
    const SCOTLAND_BOUNDS = {
        north: 60.85,
        south: 54.60,
        west: -8.65,
        east: -0.76,
    };
    // Set the options for the autocomplete search.
    const options = {
        bounds: SCOTLAND_BOUNDS,
        componentRestrictions: {
            country: ["uk"]
        },
        fields: ["formatted_address", "geometry", "name", "photos", "place_id"],
        strictBounds: true,
    };
     // Create the autocomplete object.
    const autocomplete = new google.maps.places.Autocomplete(searchInput, options);

     // Event listener for when a place is selected from the autocomplete dropdown.
    autocomplete.addListener("place_changed", () => {
        // Get the selected place.
        const place = autocomplete.getPlace();
        
        // Get the geographical coordinates of the selected place.
        const coordinates = place.geometry.location;
        const latitude = coordinates.lat();
        const longitude = coordinates.lng();
        
        // Update the text content and value of the form fields with the details of the selected place.
        nameField.textContent = place.name;
        titleField.value = place.name;  
        latitudeField.value = latitude;
        longitudeField.value = longitude;
        googlePlaceIdField.value = place.place_id;
        addressField.textContent = place.formatted_address;
        addressFieldForm.value = place.formatted_address;  
        contentField.value = place.formatted_address;  

        // If the selected place has photos, fetch the URL of the first photo.
        if (place.photos && place.photos.length > 0) {
            fetchPhoto(place.place_id);
        }

        // Display the form for adding a new place.
        const placeAddForm = document.getElementById("place-add-form");
        placeAddForm.style.display = "flex";
    });
}

// Function to fetch the photo URL for a place.
function fetchPhoto(placeId) {
    // Create a new PlacesService object.
    const service = new google.maps.places.PlacesService(document.createElement('div'));

    // Send a Place Details request.
    service.getDetails({
        placeId: placeId,
        fields: ['photos']
    }, (place, status) => {
        if (status === google.maps.places.PlacesServiceStatus.OK && place.photos && place.photos.length > 0) {
            // Get the URL of the first photo and update the src attribute of the img element.
            const photoUrl = place.photos[0].getUrl({maxWidth: 750});
            document.getElementById('photo').src = photoUrl;
            document.getElementById('photoUrlField').value = photoUrl;
        }
    });

    function getNewPhotoLink() {
    var map;
    let googlePhotoUrl;

    map = new google.maps.Map(document.createElement("div"));

    var request = {
        placeId: googlePlaceIdField.value, // Use the value of the googlePlaceIdField.
        fields: ["photos", ]
    };

    function callback(place, status) {
        if (status == google.maps.places.PlacesServiceStatus.OK) {
            if (place.photos) {
                googlePhotoUrl = place.photos[0].getUrl({
                    maxHeight: 650,
                    maxWidth: 650,
                });
                document.getElementById('photo').src = googlePhotoUrl;
                document.getElementById('photoUrlField').value = googlePhotoUrl;
            } else {
                console.log("No Google photo exists for this place.");
            }
            // Show the photo once the Google image is fetched and inserted.
            setTimeout(() => {
                document.getElementById('photo').classList.add("show-photo");
              }, 300);
        }
    }

    var service = new google.maps.places.PlacesService(map);
    service.getDetails(request, callback);
}

// Event listener for when the page is loaded.
window.addEventListener("load", () => {
    getNewPhotoLink();
});
}