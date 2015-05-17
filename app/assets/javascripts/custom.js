
$(document).ready(function() {

  $(document).on('click', "#why-btn", function(e) {
    e.preventDefault();
    $("#benefits").slideDown(200);
  });

  $(document).on('click', "#close-benefits-btn", function(e) {
    e.preventDefault();
    $("#benefits").slideUp(200);
  });

  $('.carousel').carousel({
    interval: 8000
  });

});
