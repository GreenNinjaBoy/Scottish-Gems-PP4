console.log("Script loaded");

const searchInput = document.getElementById("search-input");
const latitudeField = document.getElementById("latitude-field");
const longitudeField = document.getElementById("longitude-field");
const googlePlaceIdField = document.getElementById("googlePlaceIdField");
const nameField = document.getElementById("add-form-title");
const addressField = document.getElementById("add-form-address");

// Add these lines to get the hidden fields in your form
const titleField = document.getElementById("title-field");
const addressFieldForm = document.getElementById("address-field");
const contentField = document.getElementById("content-field");

console.log("searchInput", searchInput);
console.log("latitudeField", latitudeField);
console.log("longitudeField", longitudeField);
console.log("googlePlaceIdField", googlePlaceIdField);
console.log("nameField", nameField);
console.log("addressField", addressField);

// Create Google Places autocomplete functionality for place searches. 
function initAutocomplete() {
    console.log("initAutocomplete called");

    const SCOTLAND_BOUNDS = {
        north: 60.85,
        south: 54.60,
        west: -8.65,
        east: -0.76,
    };

    const options = {
        bounds: SCOTLAND_BOUNDS,
        componentRestrictions: {
            country: ["uk"]
        },
        fields: ["formatted_address", "geometry", "name", "photos", "place_id"],
        strictBounds: true,
    };

    const autocomplete = new google.maps.places.Autocomplete(searchInput, options);
    console.log("Autocomplete created", autocomplete);

    // When a place is chosen, automatically fill in the hidden form fields.
    autocomplete.addListener("place_changed", () => {
        console.log("place_changed event triggered");

        const place = autocomplete.getPlace();
        console.log("place", place);

        const coordinates = place.geometry.location;
        const latitude = coordinates.lat();
        console.log("Latitude:", latitude);
        const longitude = coordinates.lng();
        console.log("Longitude:", longitude);

        nameField.textContent = place.name;
        titleField.value = place.name;  // Set the value of the hidden title field
        latitudeField.value = latitude;
        longitudeField.value = longitude;
        console.log("Google Place ID:", place.place_id);
        googlePlaceIdField.value = place.place_id;
        addressField.textContent = place.formatted_address;
        addressFieldForm.value = place.formatted_address;  // Set the value of the hidden address field
        contentField.value = place.formatted_address;  // Set the value of the hidden content field

        // Get a single photo URL from Google Places.
        if (place.photos && place.photos.length > 0) {
            const photoUrl = place.photos[0].getUrl({
                maxHeight: 750, maxWidth: 750,
            });

            const imgElement = document.getElementById("photo");
            imgElement.src = photoUrl;
            imgElement.alt = place.name + " Photo";
        }

        const placeAddForm = document.getElementById("place-add-form");
        console.log("placeAddForm", placeAddForm);

        placeAddForm.style.display = "flex";
        console.log("Form should be visible now");
    });
}

window.addEventListener("load", initAutocomplete);