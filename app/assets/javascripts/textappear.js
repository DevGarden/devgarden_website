$(document).ready(function() {

  $('#image_1').hover(function() {
       $('#hidden-text1').toggleClass('animated fadeInDown').html("Text 1");
           $('#hidden-text1').show();
       }, function() {
           $('#hidden-text1').toggleClass('animated fadeInDown').hide();
   });
   $('#image_2').hover(function() {
       $('#hidden-text2').toggleClass('animated fadeInDown').html("Text 2");
           $('#hidden-text2').show();
       }, function() {
           $('#hidden-text2').toggleClass('animated fadeInDown').hide();
   });
   $('#image_3').hover(function() {
       $('#hidden-text3').toggleClass('animated fadeInDown').html("Text 3");
           $('#hidden-text3').show();
       }, function() {
           $('#hidden-text3').toggleClass('animated fadeInDown').hide();
   });
   $('#image_4').hover(function() {
       $('#hidden-text4').toggleClass('animated fadeInDown').html("Text 4");
           $('#hidden-text4').show();
       }, function() {
           $('#hidden-text4').toggleClass('animated fadeInDown').hide();
   });
   $('#image_5').hover(function() {
       $('#hidden-text5').toggleClass('animated fadeInDown').html("Text 5");
           $('#hidden-text5').show();
       }, function() {
           $('#hidden-text5').toggleClass('animated fadeInDown').hide();
   });

});
