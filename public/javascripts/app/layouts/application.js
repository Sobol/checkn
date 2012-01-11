$(function(){
  $("#commit input").mouseover(function(e){
    $(this).parent().toggleClass("hovered");
  }).mouseout(function(){
    $(this).parent().toggleClass("hovered");
  });
  
  if ($("html").hasClass("ie6") || $("html").hasClass("ie7") || $("html").hasClass("ie8")) {
    $("html").prepend('<div class="ie_bg_fix"></div>');
  } else {
    $("#main .static").addClass("normal");
  }
});
