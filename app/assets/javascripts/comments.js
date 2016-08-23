function newComment() {
  $("#new_comment").on('submit', function(e){
    e.preventDefault();
    var values = $(this).serialize();
    var commenting = $.post(this.action, values)
    commenting.done(function(data){
      var comment = data.comments[data.comments.length -1];
      $('#comment_content').val("");
      renderNewComment(comment);
    });
  })
}

function renderNewComment(comment) {
  $('.comments').append(
    "<p class='comment-username'>" + comment['user'].first_name + " " + comment['user'].last_name + " says: </p>",
    "<p class='comment-content'>" + comment.content + "</p>"
  );
}
