$(document).ready(function() {
  var divs = $('div[id^="tag"]').hide(),
    i = 0;

  (function cycle() {

      divs.eq(i).fadeIn(400)
                .delay(4000)
                .fadeOut(400, cycle);

      i = ++i % divs.length;

  })();
})
