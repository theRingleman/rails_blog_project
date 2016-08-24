function Comment(id, content, user_first_name, user_last_name) {
  this.id = id;
  this.content = content;
  this.user_first_name = user_first_name;
  this.user_last_name = user_last_name;
}

Comment.prototype.full_name = function(){
  return this.user_first_name + " " + this.user_last_name
}

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
  var commentObj = new Comment(comment.id, comment.content, comment.user.first_name, comment.user.last_name)
  $('.comments').append(
    "<p class='comment-username'>" + commentObj.full_name() + " says: </p>",
    "<p class='comment-content'>" + commentObj.content + "</p>"
  );
}
