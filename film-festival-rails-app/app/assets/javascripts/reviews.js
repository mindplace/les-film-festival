$(document).ready(function(){
 $("#category_reviews").hide();
 $("#reviews_category_link").on("click", function(e){
  e.preventDefault();
  $("#reviews_all_list").hide();
  $("#category_reviews").show();
 });
$("#reviews_all_link").on("click", function(e){
  e.preventDefault();
  $("#category_reviews").hide();
  $("#reviews_all_list").show();
});
});

