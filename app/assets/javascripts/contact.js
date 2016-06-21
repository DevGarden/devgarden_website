$(document).ready(function() {
  $('#contact-us').click(
    function() {
      $('.contact-form').removeClass('contact-form-hidden');
      $('.contact-form').addClass('contact-form-show');
    });

  $('.contact-exit').click(
    function() {
      $('.contact-form').removeClass('contact-form-show');
      $('.contact-form').addClass('contact-form-hidden');
  });

  function gnomeleeThumb() {
    $('.gnomelee').addClass('gnomelee-hide');
    $('.gnomelee-thumb').removeClass('gnomelee-hide');
    $('.contact-form').removeClass('contact-form-show');
    $('.contact-form').addClass('contact-form-hidden');
  }
});
