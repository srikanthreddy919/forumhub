$(document).on("click", '[data-toggle="reply-form"]', function(e) {
  e.preventDefault();
  $(this)
    .parent()
    .next()
    .toggleClass("d-none");
});
