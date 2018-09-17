$(document).on('turbolinks:load', function() {

  $('.unfollow').css('background-color', '#49a9d4');
  $('.unfollow').css('color', '#FFF');

  $('.unfollow').mouseover(function(){
    $('.unfollow').val("フォロー解除");
    $('.unfollow').css('background-color', 'red');

  });
  $('.unfollow').mouseout(function(){
    $(".unfollow").val("フォロー中");
    $('.unfollow').css('background-color', '#49a9d4');
    $('.unfollow').css('color', '#FFF');
  })
  $('.unfollow').click(function(){
    prop('disabled', false);
  });

  $('.follow').click(function(){
    prop('disabled', false);
  });

  $('.follow').mouseover(function(){
    $('.follow').css('background-color', '#49a9d4');
    $('.follow').css('color', '#FFF');
    $('.follow').val("フォローする");
  });

  $('.follow').mouseout(function(){
    $('.follow').css('background-color', '#FFF');
    $('.follow').css('color', '#49a9d4');
    $(".follow").val("フォロー");
  });
});







