$(function(){
  $("#menu-buttons p a").mouseover(function(e){
    $(this).parent().toggleClass("hovered");
  }).mouseout(function(){
    $(this).parent().toggleClass("hovered");
  });

  $("#subheader p a").mouseover(function(e){
    $(this).parent().toggleClass("hovered");
  }).mouseout(function(){
    $(this).parent().toggleClass("hovered");
  });
});
