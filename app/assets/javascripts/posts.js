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
      renderComments(post.comments);
    });
  });
}

function renderComments(comments) {
  $('.comments').empty()
  // for (var i = 0; i < comments.length; i++) {
  //   if (comments['user'] != null) {
  //     $('.comments').append(
  //       $('.comment-username').html("<p class='comment-username'>" + comments[i]['user'].first_name + " " + comments[i].last_name + " says: </p><br>");
  //       $('.comment-content').html("<p class='comment-content'>" + comments[i].content + "</p>");
  //     );
  //   }
  // }
}
