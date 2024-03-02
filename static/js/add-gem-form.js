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

        // Get a single photo URL from Google Places.
        
        if (place.photos && place.photos.length > 0) {
            const photoReference = place.photos[0].photo_reference;
            const photoUrl = `https://maps.googleapis.com/maps/api/place/photo?maxwidth=750&photoreference=${photoReference}&key=YOUR_API_KEY`;

    // If the selected place has photos, get the URL of the first photo and update the src attribute of the img element.
        const imgElement = document.getElementById("photo");
        imgElement.src = photoUrl;
        imgElement.alt = place.name + " Photo";

        const photoUrlField = document.getElementById("photoUrlField");
        photoUrlField.value = photoUrl;
}

        // Display the form for adding a new place.
        const placeAddForm = document.getElementById("place-add-form");

        placeAddForm.style.display = "flex";
    });
}