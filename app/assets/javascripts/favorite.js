$(document).on('turbolinks:load', function() {
  $(".tweet-area__action-area").on("click", '.fa-heart-o', function(){ //onでlive機能を使うため、on("...", "sekector", ~~)
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
        $('#red').prop('id', '')
        console.log("add red done")
      })
      .fail(function(){
        alert('fail');
      })
  })

  $(".tweet-area__action-area").on("click", ".fa-icon-red", function(){
    $(this).prop('id', 'unred')
    var tweet = $(this).parent().parent().data("id");
    $.ajax({
      type: "DELETE",
      url: `/favorites/${tweet}`,
      dataType: "json"
    })
    .done(function(data){
      console.log("add unred done")
      $('#unred').removeClass('fa fa-heart fa-icon-red');
      $('#unred').addClass('fa fa-heart-o');
      $('#unred').prop('id', '')
    })
    .fail(function(){
      alert('fail');
    })
  })

  

})
