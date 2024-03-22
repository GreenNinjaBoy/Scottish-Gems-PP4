document.addEventListener('DOMContentLoaded', function() {
    // Get the message element
    var message = document.getElementById('message');
    // If the message element exists
    if (message) {
        // Get the modal body element
        var messageModalBody = document.getElementById('messageModalBody');
        // Set the text of the modal body to the text of the message
        messageModalBody.textContent = message.textContent;
        // Create a new Bootstrap modal
        var messageModal = new bootstrap.Modal(document.getElementById('messageModal'), {});
        // Show the modal
        messageModal.show();
    }
});

