$(document).on('turbolinks:load', function() {
  $('.fa-heart-o').on("click",function(){
    $(this).prop('id', 'touch')
    var tweet = $(this).parent().parent().data("id");
    console.log(tweet)
      $.ajax({
        type: "POST",
        url: '/favorites',
        data: {id: tweet},
        dataType: "json"
      })
      .done(function(data){
        $('#touch').removeClass('fa fa-heart-o');
        $('#touch').addClass('fa fa-heart fa-icon-red'); 
      })
      .fail(function(){
        alert('fail');
      })
  })

  $('.fa-heart-o').on("click",function(){
    $('.fa-heart-o').on("click",function(){

    })

  })



})
