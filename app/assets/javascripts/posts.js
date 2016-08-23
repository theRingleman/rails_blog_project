function nextPost() {
  $(".js-next").on("click", function(event) {
    event.preventDefault();
    var nextId = parseInt($(".js-next").attr("data-id")) + 1;
    $.get("/posts/" + nextId + ".json", function(post) {
      // get post
      $(".postTitle").text(post.title);
      $(".postContent").text(post.content);
      // re-set the id to current on the link
      $(".js-next").attr("data-id", post.id);
      renderComments(post.comments)
    });
  });
}

function renderComments(comments) {
  $('.comment-username').text(comments[0].first_name + " " + comments[0].last_name + " says:");
  $('.comment-content').text(comments[0].content);
  for (var i = 1; i < comments.length; i++) {
    $('.comments').append(
      $('.comment-username').text(comments[i].first_name + " " + comments[i].last_name + " says:");
      $('.comment-content').text(comments[i].content);
    )
  }
}
