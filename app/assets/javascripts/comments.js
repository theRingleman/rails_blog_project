function newComment() {
  $("#new_comment").on('submit', function(e){
    e.preventDefault();
    alert("You just clicked me!")
  })
}
