
$(document).ready(function() {

  $("#why-btn").on('click', function(e) {
    e.preventDefault();
    $("#benefits").slideDown(200);
  });

  $("#close-benefits-btn").on('click', function(e) {
    e.preventDefault();
    $("#benefits").slideUp(200);
  });

});
