// before to up vote something
// whereToMove.before(thingToMove)
// after to down vote something
// whereToMove.after(thingToMove)
$(function(){
  $(".rank-buttons-container").on('ajax:success', function(){
    console.log("Weeee", $(this).parent())
  })
})
