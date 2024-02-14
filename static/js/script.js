document.addEventListener('DOMContentLoaded', function() {
    var message = document.getElementById('message');
    if (message) {
        var messageModalBody = document.getElementById('messageModalBody');
        messageModalBody.textContent = message.textContent;
        var messageModal = new bootstrap.Modal(document.getElementById('messageModal'), {});
        messageModal.show();
    }
});