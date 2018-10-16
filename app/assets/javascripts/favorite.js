$(document).on('turbolinks:load', function() {
  $('.fa-heart-o').on("click",function(){
  var tweet = $('.tweet-area__boader').first().data("id");
  console.log(tweet);
    $.ajax({
      type: "POST",
      url: '/favorites',
      data: {id: tweet},
      dataType: "json"
    })
    .done(function(data){
      $(this).addClass('icon-red');
    })
    .fail(function(){
      alert('fail');
    })
  })
})
