console.log("Script loaded");  // This should show when the script is loaded

const searchInput = document.getElementById("search-input");
const latitudeField = document.getElementById("latitude-field");
const longitudeField = document.getElementById("longitude-field");
const googlePlaceIdField = document.getElementById("googlePlaceIdField");
const nameField = document.getElementById("add-form-title");
const addressField = document.getElementById("add-form-address");

console.log("searchInput", searchInput);  // This should show the searchInput element
console.log("latitudeField", latitudeField);  // This should show the latitudeField element
console.log("longitudeField", longitudeField);  // This should show the longitudeField element
console.log("googlePlaceIdField", googlePlaceIdField);  // This should show the googlePlaceIdField element
console.log("nameField", nameField);  // This should show the nameField element
console.log("addressField", addressField);  // This should show the addressField element

// Create Google Places autocomplete functionality for place searches. 
function initAutocomplete() {
    console.log("initAutocomplete called");  // This should show when initAutocomplete is called

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
    console.log("Autocomplete created", autocomplete);  // This should show the Autocomplete instance

    // When a place is chosen, automatically fill in the hidden form fields.
    autocomplete.addListener("place_changed", () => {
        console.log("place_changed event triggered");  // This should show when a place is selected

        const place = autocomplete.getPlace();
        console.log("place", place);  // This should show the place object

        const coordinates = place.geometry.location;
        const latitude = coordinates.lat();
        const longitude = coordinates.lng();

        nameField.textContent = place.name;
        console.log("latitudeField", latitudeField);
        latitudeField.value = latitude;
        console.log("longitudeField", longitudeField);
        longitudeField.value = longitude;
        console.log("googlePlaceIdField", googlePlaceIdField);
        googlePlaceIdField.value = place.place_id;
        addressField.textContent = place.formatted_address;
        

        // Get a single photo URL from Google Places.
        if (place.photos && place.photos.length > 0) {
            // Get the URL of the first photo in the array.
            const photoUrl = place.photos[0].getUrl({
                maxHeight: 750, maxWidth: 750,
            });

            // Set the src attribute of the img element in the place card.
            const imgElement = document.getElementById("photo");
            imgElement.src = photoUrl;

            // Set the alt title.
            imgElement.alt = place.name + " Photo";
        }

        // Show the place card once the user has clicked on a place.
        const placeAddForm = document.getElementById("place-add-form");
        console.log("placeAddForm", placeAddForm);  // This should show the placeAddForm element

        placeAddForm.style.display = "flex";
        console.log("Form should be visible now");  // This should show when the form is made visible
    });
}

// Call the function on window load.
window.addEventListener("load", initAutocomplete);