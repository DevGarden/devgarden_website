$(document).ready(function() {

  $('#iot').click(
    function() {
      $('.iot-container').addClass('hide');
      $('.businessprocesses-container').addClass('hide');
      $('.dataintegration-container').addClass('hide');
      $('.mobileandenterprise-container').addClass('hide');
      $('.iot-container').addClass('animated fadeIn');
      $('.iot-container').removeClass('hide');
      $('.interest-img').height(200).width(135);
      $(this).children().height(245).width(170);
    }
  )

  $('#businessprocesses').click(
    function() {
      $('.iot-container').addClass('hide');
      $('.businessprocesses-container').addClass('hide');
      $('.dataintegration-container').addClass('hide');
      $('.mobileandenterprise-container').addClass('hide');
      $('.businessprocesses-container').removeClass('hide');
      $('.businessprocesses-container').addClass('animated fadeIn');
      $('.interest-img').height(200).width(135);
      $(this).children().height(245).width(170);
    }
  )

  $('#dataintegration').click(
    function() {
      $('.iot-container').addClass('hide');
      $('.businessprocesses-container').addClass('hide');
      $('.dataintegration-container').addClass('hide');
      $('.mobileandenterprise-container').addClass('hide');
      $('.dataintegration-container').removeClass('hide');
      $('.dataintegration-container').addClass('animated fadeIn');
      $('.interest-img').height(200).width(135);
      $(this).children().height(245).width(170);
    }
  )

  $('#mobileandenterprise').click(
    function() {
      $('.iot-container').addClass('hide');
      $('.businessprocesses-container').addClass('hide');
      $('.dataintegration-container').addClass('hide');
      $('.mobileandenterprise-container').addClass('hide');
      $('.mobileandenterprise-container').removeClass('hide');
      $('.mobileandenterprise-container').addClass('animated fadeIn');
      $('.interest-img').height(200).width(135);
      $(this).children().height(245).width(170);
    }
  )

});
