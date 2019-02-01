// $(window).scroll(function() {
// 
// 	$('.header-overlay').css({
//   	opacity: function() {
//     	var opacity = 1;
//       //TODO:
//       //Set opacity to a higer value whilst user scrolls
//
//     	return opacity;
//     }
//   });
//
// });
//
// var element = document.getElementById('id');
// element.style.opacity = "0.9";
// element.style.filter  = 'alpha(opacity=90)


$(window).scroll(function() {
  var scrollTop = $(this).scrollTop();

  $('.header-overlay').css({
    opacity: function() {
      var elementHeight = $(this).height();
      return 1 - (elementHeight - scrollTop) / elementHeight;
    }
  });
});
