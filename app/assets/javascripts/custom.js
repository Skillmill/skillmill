
$(document).ready(function() {

  $(document).on('click', "#why-btn", function(e) {
    e.preventDefault();
    $("#benefits").slideDown(200);
  });

  $(document).on('click', "#benefits-more", function(e) {
    e.preventDefault();
    $("#keypoints").slideDown(200);
    $("#benefits-more").hide();
    $("#benefits-less").show();
  });
  $(document).on('click', "#benefits-less", function(e) {
    e.preventDefault();
    $("#keypoints").slideUp(200);
    $("#benefits-less").hide();
    $("#benefits-more").show();
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

  $(document).on('click', '.step-1', function(e) {
    e.preventDefault();
    $('#tour-image').find('div').addClass('hidden');
    $('.first-image').toggleClass('hidden');
  });
  $(document).on('click', '.step-2', function(e) {
    e.preventDefault();
    $('#tour-image').find('div').addClass('hidden');
    $('.second-image').toggleClass('hidden');
  }); 
  $(document).on('click', '.step-3', function(e) {
    e.preventDefault();
    $('#tour-image').find('div').addClass('hidden');
    $('.third-image').toggleClass('hidden');
  }); 
  $(document).on('click', '.step-4', function(e) {
    e.preventDefault();
    $('#tour-image').find('div').addClass('hidden');
    $('.fourth-image').toggleClass('hidden');
  });

  // $(".category-icon").hover(growCategoryBtn, shrinkCategoryBtn);
  
  // function growCategoryBtn() {
  //   $(this).addClass('grow');
  // };
  // function shrinkCategoryBtn() {
  //   $(this).removeClass('grow');
  // };

});
