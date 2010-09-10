$(function(){
  $(".foobarbaz").bind("showoff:next", function (event) {
    var h1 = $(event.target).find("li");
    h1
      .fadeOut(300, function () { $(this).css({textDecoration: "line-through"}); })
      .fadeIn(300);
  });
});
