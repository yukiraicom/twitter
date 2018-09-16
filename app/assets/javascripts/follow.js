$(document).on('turbolinks:load', function() {
  $('.unfollow').mouseover(function(){
    $('.unfollow').val("フォロー解除");
    $('.unfollow').css('background-color', 'red');

  });
  $('.unfollow').mouseout(function(){
    $(".unfollow").val("フォロー中");
    $('.unfollow').css('background-color', '#49a9d4');

  })
  $('.unfollow').click(function(){
    prop('disabled', false);
  });

  $('.follow').click(function(){
    prop('disabled', false);
  });

  $('.follow').mouseover(function(){
    $('.follow').val("フォローする");
  });

  $('.follow').mouseout(function(){
    $(".follow").val("フォロー");
  });
});







