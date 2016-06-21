$(document).ready(function() {

  $('#image_1').hover(
    function() {
      $('#hidden-text1').removeClass('hidden-box');
    }, function() {
       $('#hidden-text1').addClass('hidden-box');
     }
   );
   //
  //  $('#image_2').hover(function() {
  //      $('.hidden-text2').toggleClass('animated fadeInDown')
  //  });
   //
  //  $('#image_3').hover(function() {
  //      $('.hidden-text3').toggleClass('animated fadeInDown')
  //  });
   //
  //  $('#image_4').hover(function() {
  //      $('.hidden-text4').toggleClass('animated fadeInDown')
  //  });
   //
  //  $('#image_5').hover(function() {
  //      $('.hidden-text5').toggleClass('animated fadeInDown')
  //  });

});
