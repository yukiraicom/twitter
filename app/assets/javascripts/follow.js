$(document).on('turbolinks:load', function() {
  $('.unfollow').mouseover(function(){
    $('.unfollow').val("フォロー解除");
  });
  $('.unfollow').mouseout(function(){
    $(".unfollow").val("フォロー中");
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







