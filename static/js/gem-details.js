const placeDetailPhoto = document.getElementById("place-detail-photo");

function getNewPhotoLink() {
    var map;
    let googlePhotoUrl;

    map = new google.maps.Map(document.createElement("div"));

    var request = {
        placeId: GOOGLE_PLACE_ID,
        fields: ["photos", ]
    };

    function callback(place, status) {
        if (status == google.maps.places.PlacesServiceStatus.OK) {
            if (place.photos) {
                googlePhotoUrl = place.photos[0].getUrl({
                    maxHeight: 650,
                    maxWidth: 650,
                });
                placeDetailPhoto.src = googlePhotoUrl;
            } else {
                console.log("No Google photo exists for this place.");
                placeDetailPhoto.classList.add("show-photo");
            }
            // Show the photo once the Google image is fetched and inserted.
            setTimeout(() => {
                placeDetailPhoto.classList.add("show-photo");
              }, 300);
        }
    }

    var service = new google.maps.places.PlacesService(map);
    service.getDetails(request, callback);
}

window.addEventListener("load", () => {
    getNewPhotoLink();
});