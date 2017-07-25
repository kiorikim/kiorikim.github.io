$(document).ready(function(){
  $(".collection_representor").on("mouseover",function(){
    var showtext = $(this).attr("id");
    if (showtext=="col1")
      $(this).addClass("col1_div_hover")
    else if(showtext=="col2")
      $(this).addClass("col2_div_hover")
    else if(showtext=="col3")
      $(this).addClass("col3_div_hover")
    else if(showtext=="col4")
      $(this).addClass("col4_div_hover")
    else if(showtext=="col5")
      $(this).addClass("col5_div_hover")
    else
      $(this).addClass("col6_div_hover")
    $("." + showtext).show();
  })
  $(".collection_representor").on("mouseout",function(){
    var showtext = $(this).attr("id");
    if (showtext=="col1")
      $(this).removeClass("col1_div_hover")
    else if(showtext=="col2")
      $(this).removeClass("col2_div_hover")
    else if(showtext=="col3")
      $(this).removeClass("col3_div_hover")
    else if(showtext=="col4")
      $(this).removeClass("col4_div_hover")
    else if(showtext=="col5")
      $(this).removeClass("col5_div_hover")
    else
      $(this).removeClass("col6_div_hover")
    $("." + showtext).hide();
  })
  $('a').click(function(){
    $('html, body').animate({
        scrollTop: $( $(this).attr('href') ).offset().top
    }, 1000); // можно менять время
    return false;
});
});
