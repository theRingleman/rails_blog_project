function nextPost() {
  $(".js-next").on("click", function(event) {
    event.preventDefault();
    var nextId = parseInt($(".js-next").attr("data-id")) + 1;
    $.get("/posts/" + nextId + ".json", function(post) {
      // get post
      $(".postTitle").text(post["title"]);
      $(".postContent").text(post["content"]);
      // re-set the id to current on the link
      $(".js-next").attr("data-id", post["id"]);
    });
  });
}
