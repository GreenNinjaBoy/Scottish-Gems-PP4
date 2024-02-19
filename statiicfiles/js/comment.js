$('.delete-comment').on('click', function() {
    var commentId = $(this).data('comment-id');
    var confirmation = confirm('Are you sure you want to delete this comment?');
    if (confirmation) {
        $.ajax({
            url: '/post/' + $(this).data('post-id') + '/comment/' + commentId + '/delete/',
            type: 'POST',
            data: {
                'csrfmiddlewaretoken': $('input[name=csrfmiddlewaretoken]').val()
            },
            success: function() {
                location.reload();
            }
        });
    }
});