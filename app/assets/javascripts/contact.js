$(document).ready(function() {
  $('.contact-form').hide();
  $('.success-btn').hide();
  $('.gnomelee-thumb').hide();

  $('#contact-us').click(
    function() {
      $('.contact-btn').hide();
      $('.contact-form').show();
    });

  $(document).mouseup(function (e) {
    var container = $(".contact-form");

    if (!container.is(e.target) // if the target of the click isn't the container...
        && container.has(e.target).length === 0) // ... nor a descendant of the container
    {
        container.hide();
        $('.contact-btn').show();
    }
  });

});

function gnomeleeThumb() {
  $('.contact-btn').hide();
  $('.gnomelee').hide();
  $('.gnomelee-thumb').show();
  $('.contact-form').hide();
  $('.success-btn').show();
}
