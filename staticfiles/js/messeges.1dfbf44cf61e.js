const messageContainers = Array.from(document.getElementsByClassName("messages"));

function closeMessage(event) {
    event.target.style.display = "none";
}

// Automatically close Django messages after 5 seconds.
messageContainers.forEach(container => {
    setTimeout(() => {
        container.style.display = "none";
    }, 5000);
    // Allow the user to dismiss the modal by clicking anywhere on the screen.
    container.addEventListener("click", closeMessage);
});