$(document).ready(function() {

  // reveal review form
  $("#add-new-review").on("click", "a", function(e) {
    e.preventDefault();
    var url = $(e.target).attr("href");

    $.ajax({
      type: "GET",
      url: url
    }).done(function(response){
      // debugger;
      $(this).hide();
      $(this).parent().append(response);

    }.bind(this));
  });

  // post new review to movie show page
  $("#add-new-review").on("submit", "#review_form", function(e){
    e.preventDefault();
    var type = e.target.method
    var url = e.target.action
    var data = $(e.target).serialize();

    $.ajax({
      type: type,
      url: url,
      data: data
    }).done(function(response){
      if(response.includes("judge")) {
        $("#list-of-judge-reviews").append(response);
      } else {
        $("#list-of-user-reviews").append(response);
      }
      $("#add-new-review").find("a").show();
      $(this).parent().remove();
    }.bind(this))
  });

  // delete user review
  $("#list-of-user-reviews").on("click", ".delete-link", function(e) {
    e.preventDefault();
    var url = $(e.target).attr("href");
    // var type = $(e.target).attr("data-method");

    $.ajax({
      url: url,
      type: "GET"
    }).done(function(response){
      $(this).closest(".review-info").remove();
    }.bind(this));
  });

  // delete judge review
  $("#list-of-judge-reviews").on("click", ".delete-link", function(e) {
    e.preventDefault();
    var url = $(e.target).attr("href");

    $.ajax({
      url: url,
      type: "GET"
    }).done(function(response){
      $(this).closest(".review-info").remove();
    }.bind(this));
  });

  // reveal comment form for users
  $("#list-of-user-reviews").on("click", ".new-comment-link", function(e) {
    e.preventDefault();
    var url = $(e.target).attr("href");

    $.ajax({
      url: url,
      type: "GET"
    }).done(function(response){
      $(this).parent().append(response);
      $(this).hide();
    }.bind(this));
  });

  // post comment to user section
  $("#list-of-user-reviews").on("submit", "#comment_form", function(e) {
    e.preventDefault();
    var url = e.target.action;
    var type = e.target.method;
    var data = $(e.target).serialize();

    $.ajax({
      url: url,
      type: type,
      data: data
    }).done(function(response) {
      if ($(this).parent().siblings(".comment-list").find(".no-comments").length == 0) {
        $(this).parent().siblings(".comment-list").append(response);
      } else {
        $(this).parent().siblings(".comment-list").find("p").hide();
        $(this).parent().siblings(".comment-list").append(response);
      };
      $(this).siblings().show();
      $(this).remove();
    }.bind(this));
  });

   // reveal comment form for judge section
  $("#list-of-judge-reviews").on("click", ".new-comment-link", function(e) {
    e.preventDefault();
    var url = $(e.target).attr("href");

    $.ajax({
      url: url,
      type: "GET"
    }).done(function(response){
      $(this).parent().append(response);
      $(this).hide();
    }.bind(this));
  });

  // post comment to judge section
  $("#list-of-judge-reviews").on("submit", "#comment_form", function(e) {
    e.preventDefault();
    var url = e.target.action;
    var type = e.target.method;
    var data = $(e.target).serialize();

    $.ajax({
      url: url,
      type: type,
      data: data
    }).done(function(response) {
      if ($(this).parent().siblings(".comment-list").find(".no-comments").length == 0) {
        $(this).parent().siblings(".comment-list").append(response);
      } else {
        $(this).parent().siblings(".comment-list").find(".no-comments").hide();
        $(this).parent().siblings(".comment-list").append(response);
      };
      $(this).siblings().show();
      $(this).remove();
    }.bind(this));
  });
});
