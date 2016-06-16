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
    // var type = $(e.target).attr("data-method");

    $.ajax({
      url: url,
      type: "GET"
    }).done(function(response){
      $(this).closest(".review-info").remove();
    }.bind(this));
  });

});
