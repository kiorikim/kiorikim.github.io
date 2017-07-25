$(document).ready(function(){
  var open
  $('.person a').on('click',function(){
    open = $(this).attr('href');
    $(open).show();
  })
  $('a').click(function(){
    $('html, body').animate({
        scrollTop: $( $(this).attr('href') ).offset().top
    }, 1000); // можно менять время
    return false;
});
$('.registration_keywords li').on("click",function(){
  $('.registration_keywords li').removeClass('active');
  $(this).addClass('active');
})
});
