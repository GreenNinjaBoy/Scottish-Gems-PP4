$('.delete-comment').on('click', function() {
    // Get the comment ID from the data attribute
    var commentId = $(this).data('comment-id');
    // Confirm the deletion
    var confirmation = confirm('Are you sure you want to delete this comment?');
    // If the user confirmed the deletion
    if (confirmation) {
        // Send a POST request to the server to delete the comment
        $.ajax({
            url: '/post/' + $(this).data('post-id') + '/comment/' + commentId + '/delete/',
            type: 'POST',
            data: {
                'csrfmiddlewaretoken': $('input[name=csrfmiddlewaretoken]').val()
            },
            success: function() {
                // Decrease the comment count
                var commentCountElement = $('#comment-count');
                var commentCount = parseInt(commentCountElement.text());
                commentCountElement.text(commentCount - 1);
            }
        });
    }
});