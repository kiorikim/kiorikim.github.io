$(document).ready(function(){
  $("div").on("mouseover",function(){
    var open = $(this).attr("id");
    $(".zhasotan_left_menu a").removeClass("active_left")
    $("."+open).addClass("active_left")
  })

});
