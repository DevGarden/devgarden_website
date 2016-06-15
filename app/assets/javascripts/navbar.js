$(document).ready(function() {
  $('button').click(function() {
    $(".hamburger").toggleClass("is-active");
    $(".my-dropdown").toggleClass('show');
  });
});
