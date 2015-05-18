
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

  $(document).on('click', '.form a', function(e) {
    e.preventDefault();
    e.stopPropagation; 
    $(this).closest('ul').find('.selected').removeClass('selected');
    $(this).parent().addClass('selected');
  });

  //if i click step 1 btn, hide all divs inside #tour-image, then show first image
  $(document).on('click', '.step-1', function(e) {
    e.preventDefault();
    $('#tour-image').find('div').addClass('hidden');
    $('.first-image').toggleClass('hidden');
  });

  //if i click step 2 btn, hide all divs inside #tour-image, then show second image
  $(document).on('click', '.step-2', function(e) {
    e.preventDefault();
    $('#tour-image').find('div').addClass('hidden');
    $('.second-image').toggleClass('hidden');
  });
  //if i click step 3 btn, hide all divs inside #tour-image, then show third image
  $(document).on('click', '.step-3', function(e) {
    e.preventDefault();
    $('#tour-image').find('div').addClass('hidden');
    $('.third-image').toggleClass('hidden');
  });
  //if i click step 4 btn, hide all divs inside #tour-image, then show fourth image
  $(document).on('click', '.step-4', function(e) {
    e.preventDefault();
    $('#tour-image').find('div').addClass('hidden');
    $('.fourth-image').toggleClass('hidden');
  });
});
