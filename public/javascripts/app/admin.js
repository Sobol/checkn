$(function(){
  $("#menu-buttons p a").mouseover(function(e){
    $(this).parent().toggleClass("hovered");
  }).mouseout(function(){
    $(this).parent().toggleClass("hovered");
  });

  $("#commit input").mouseover(function(e){
    $(this).parent().toggleClass("hovered");
  }).mouseout(function(){
    $(this).parent().toggleClass("hovered");
  });

  $("#add-news-button a").mouseover(function(e){
    $(this).parent().toggleClass("hovered");
  }).mouseout(function(){
    $(this).parent().toggleClass("hovered");
  });
});
