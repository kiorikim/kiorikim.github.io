$(document).ready(function(){
  var main_chosen;
  var next
  $('.main_choice li').on("click",function(){
    $('.main_choice li').removeClass('active');
    $(this).addClass('active');
    main_chosen = $(this).attr('id');
    if (main_chosen == "company")
    {
      $('.main_choice a').attr('href','company.html')
    }
    else if (main_chosen == "person")
    {
      $('.main_choice a').attr('href','person.html')
    }
  })

  $('a').click(function(){
    $('html, body').animate({
        scrollTop: $( $(this).attr('href') ).offset().top
    }, 1500); // можно менять время
    return false;
});

var element = $('#square');

  // the animation starts
  element.toggleClass('fadeInRight animated');

  // do something when animation ends
  element.one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(e){

   // trick to execute the animation again
    $(e.target).removeClass('fadeInRight animated');

  });

});
