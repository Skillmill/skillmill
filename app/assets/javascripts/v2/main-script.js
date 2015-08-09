$(document).on('page:load ready', function () {
    $("select").selectpicker();
});

jQuery(window).ready(function ($) {
    $('#carousel').flexslider({
        animation: "slide",
        controlNav: true,
        directionNav: true,
        animationLoop: false,
        slideshow: false,
        itemWidth: 340,
        itemMargin: 0,
        move: 1

    });

});
jQuery(window).ready(function ($) {
    $('#banner').flexslider({
        animation: "slide",
        controlNav: true,
        directionNav: true,
        prevText: "", //String: Set the text for the "previous" directionNav item
        nextText: "", //String: Set the text for the "next" directionNav item
        animationLoop: false,
        slideshow: true,
        sync: "#slider",
        start: function (slider) {
            $('body').removeClass('loading');
        }
    });
});
$(document).ready(function () {
    $('.why-icon').click(function (e) {
        e.preventDefault();
        $('.whyblock').slideDown();
    });
    $('.close-icon').click(function (e) {
        e.preventDefault();
        $('.whyblock').slideUp();
    });
});
$(document).ready(function () {
    $('.show-text').click(function (evt) {
        evt.preventDefault();
        if ($('.show-wrap').is(':hidden')) {
            $(this).html('<big>Hide advanced Filters <i class="fa fa-angle-up"></i></big>');
            $('.show-wrap').slideToggle();
        } else {
            $(this).html('<big>Show advanced Filters <i class="fa fa-angle-down"></i></big>');
            $('.show-wrap').slideToggle();
        }
    });
});
equalheight = function (container) {

    var currentTallest = 0,
        currentRowStart = 0,
        rowDivs = new Array(),
        $el,
        topPosition = 0;
    $(container).each(function () {

        $el = $(this);
        $($el).height('auto')
        topPostion = $el.position().top;

        if (currentRowStart != topPostion) {
            for (currentDiv = 0; currentDiv < rowDivs.length; currentDiv++) {
                rowDivs[currentDiv].height(currentTallest);
            }
            rowDivs.length = 0; // empty the array
            currentRowStart = topPostion;
            currentTallest = $el.height();
            rowDivs.push($el);
        } else {
            rowDivs.push($el);
            currentTallest = (currentTallest < $el.height()) ? ($el.height()) : (currentTallest);
        }
        for (currentDiv = 0; currentDiv < rowDivs.length; currentDiv++) {
            rowDivs[currentDiv].height(currentTallest);
        }
    });
}

$(window).load(function () {
    equalheight('.projectBlock');
});


$(window).resize(function () {
    equalheight('.projectBlock');
});


$(document).ready(function () {
    $('.FilterAdvanced .form-wrap .dropdown-menu li .fa').hover(function () {
            $(this).next().fadeIn();
        },
        function () {
            $(this).next().fadeOut();
        });
});