$(document).ready(function() {
  $('button').click(function() {
    $(".hamburger").toggleClass("is-active");
    $(".dropdown-content").toggleClass('show');
  });
});
