$(document).on('turbolinks:load', function() {
  $('.fa-heart-o').on("click",function(){
    console.log("fa-heart-o発火")
    $(this).prop('id', 'red')
    var tweet = $(this).parent().parent().data("id");
      $.ajax({
        type: "POST",
        url: '/favorites',
        data: {id: tweet},
        dataType: "json"
      })
      .done(function(data){
        $('#red').removeClass('fa fa-heart-o');
        $('#red').addClass('fa fa-heart fa-icon-red'); 
      })
      .fail(function(){
        alert('fail');
      })
  })

  $('.fa-icon-red').on("click",function(){
    console.log("fa-icon-red発火")
    $(this).prop('id', 'unred')
  })



})
