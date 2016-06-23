$(document).ready(function() {

  $('#iot').click(
    function() {
      $('.iot-container').addClass('hide');
      $('.businessprocesses-container').addClass('hide');
      $('.dataintegration-container').addClass('hide');
      $('.mobileandenterprise-container').addClass('hide');
      $('.iot-container').removeClass('hide');
    }
  )

  $('#businessprocesses').click(
    function() {
      $('.iot-container').addClass('hide');
      $('.businessprocesses-container').addClass('hide');
      $('.dataintegration-container').addClass('hide');
      $('.mobileandenterprise-container').addClass('hide');
      $('.businessprocesses-container').removeClass('hide');
    }
  )

  $('#dataintegration').click(
    function() {
      $('.iot-container').addClass('hide');
      $('.businessprocesses-container').addClass('hide');
      $('.dataintegration-container').addClass('hide');
      $('.mobileandenterprise-container').addClass('hide');
      $('.dataintegration-container').removeClass('hide');
    }
  )

  $('#mobileandenterprise').click(
    function() {
      $('.iot-container').addClass('hide');
      $('.businessprocesses-container').addClass('hide');
      $('.dataintegration-container').addClass('hide');
      $('.mobileandenterprise-container').addClass('hide');
      $('.mobileandenterprise-container').removeClass('hide');
    }
  )

});
