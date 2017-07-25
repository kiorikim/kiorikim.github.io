$(document).ready(function(){
  var open
  $('.company a').on('click',function(){
    open = $(this).attr('href');
    $(open).show();
  })
  $('a').click(function(){
    $('html, body').animate({
        scrollTop: $( $(this).attr('href') ).offset().top
    }, 1000); // можно менять время
    return false;
});
})
