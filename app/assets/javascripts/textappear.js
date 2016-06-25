$(document).ready(function() {

  $('#image_1').hover(
    function() {
      $('#hidden-text1').removeClass('hidden-box');
      $('#hidden-text1').addClass('animated fadeInDown');
    }, function() {
       $('#hidden-text1').addClass('hidden-box');
       $('#hidden-text1').removeClass('animated fadeInDown');
     }
   );
   $('#image_2').hover(
     function() {
       $('#hidden-text2').removeClass('hidden-box');
       $('#hidden-text2').addClass('animated fadeInDown');
     }, function() {
        $('#hidden-text2').addClass('hidden-box');
        $('#hidden-text2').removeClass('animated fadeInDown');
      }
    );
    $('#image_3').hover(
      function() {
        $('#hidden-text3').removeClass('hidden-box');
        $('#hidden-text3').addClass('animated fadeInDown');
      }, function() {
         $('#hidden-text3').addClass('hidden-box');
         $('#hidden-text3').removeClass('animated fadeInDown');
       }
     );
     $('#image_4').hover(
       function() {
         $('#hidden-text4').removeClass('hidden-box');
         $('#hidden-text4').addClass('animated fadeInDown');
       }, function() {
          $('#hidden-text4').addClass('hidden-box');
          $('#hidden-text4').removeClass('animated fadeInDown');
        }
      );
      $('#image_5').hover(
        function() {
          $('#hidden-text5').removeClass('hidden-box');
          $('#hidden-text5').addClass('animated fadeInDown');
        }, function() {
           $('#hidden-text5').addClass('hidden-box');
           $('#hidden-text5').removeClass('animated fadeInDown');
         }
       );
});
