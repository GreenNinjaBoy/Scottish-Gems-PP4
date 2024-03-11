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

document.addEventListener('DOMContentLoaded', function() {
    // Your existing code...

    // Add event listeners to login, logout, and signup buttons
    const loginButton = document.getElementById('login-button');
    const logoutButton = document.getElementById('logout-button');
    const signupButton = document.getElementById('signup-button');

    if (loginButton) {
        loginButton.addEventListener('click', loginUser);
    }

    if (logoutButton) {
        logoutButton.addEventListener('click', logoutUser);
    }

    if (signupButton) {
        signupButton.addEventListener('click', signupUser);
    }
});

function loginUser() {
    // Implement AJAX request to your login view
    fetch('/login/', {
        method: 'POST',
        credentials: 'include', // Include credentials (cookies)
        headers: {
            'Content-Type': 'application/json', // Set content type to JSON
            // Include any other headers if needed
        },
        // Include any necessary body data
    })
    .then(response => handleResponse(response))
    .catch(error => handleError(error));
}

function logoutUser() {
    fetch('/logout/', {
        method: 'POST',
        credentials: 'include', 
        headers: {
            'Content-Type': 'application/json',
        },
    })
    .then(response => handleResponse(response))
    .catch(error => handleError(error));
}

function signupUser() {
    fetch('/signup/', {
        method: 'POST',
        credentials: 'include',
        headers: {
            'Content-Type': 'application/json',
        },
    })
    .then(response => handleResponse(response))
    .catch(error => handleError(error));
}

function handleResponse(response) {
    if (response.ok) {
        window.location.href = '/';
    } else {
        console.error('Error:', response.statusText);
    }
}

function handleError(error) {
    console.error('Error:', error);
}