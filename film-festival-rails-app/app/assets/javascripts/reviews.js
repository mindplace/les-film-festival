$(document).ready(function(){
 $(".category").hide();
 $("#reviews-category").show();

 // $("#reviews_category_link").on("click", function(e){
 //    e.preventDefault();
 //    $("#reviews_all_list").hide();
 //    $("#reviews_all_link").parent().removeClass("active");
 //    $("#reviews_category_link").parent().addClass("active");
 //    $("#category_reviews").show();
 //   });
 //
 //  $("#reviews_all_link").on("click", function(e){
 //    e.preventDefault();
 //    $("#category_reviews").hide();
 //    $("#reviews_all_link").parent().addClass("active");
 //    $("#reviews_category_link").parent().removeClass("active");
 //    $("#reviews_all_list").show();
 //  });

  $(".padded-nav").on("click", "a", function(e) {
    e.preventDefault();
    var tab = $(this).attr("id");

    $(this).parent().parent().children().removeClass("active");
    $(this).parent().addClass("active");

    $(".category").hide();
    $("#" + tab + "-category").show();
  })
});
