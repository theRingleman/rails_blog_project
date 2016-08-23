function nextPost() {
  $(".js-next").on("click", function(event) {
    event.preventDefault();
    var nextId = parseInt($(".js-next").attr("data-id")) + 1;
    $.get("/posts/" + nextId + ".json", function(post) {
      renderPost(post);
      renderComments(post.comments);
    }).fail(function() {
      $('#flash').append("<p>Sorry, there are more posts on the way!</p>");
    });
  });
}

function renderComments(comments) {
  $('.comments').empty()
  $.each(comments, function(index, comment){
    $('.comments').append(
      "<p class='comment-username'>" + comment['user'].first_name + " " + comment['user'].last_name + " says: </p>",
      "<p class='comment-content'>" + comment.content + "</p>"
    );
  });
}

function renderPost(post) {
  $(".postTitle").text(post.title);
  $(".postContent").text(post.content);
  // re-set the id to current on the link
  $(".js-next").attr("data-id", post.id);
}
