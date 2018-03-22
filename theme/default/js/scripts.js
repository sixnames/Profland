$(function () {
    function stopEvents(e) {
        e.stopPropagation();
        e.preventDefault();
    }

    function initFunc(parent) {
        // icons sprite
        $("#ui-icons").load("catalog/view/theme/default/images/ui/ui-icons.html");
        // end of icons sprite

        // hide after load
        var hideItem = $('.hide');
        hideItem.each(function () {
            if (!$(this).is(".visible")) {
                $(this).delay(100).hide();
                $(this).delay(200).addClass('visible');
            }
        });
        // end of hide after load

        // radio & checkbox
        var checkBox = $("input:checkbox"),
            radioBtn = $("input.radio-btn");

        parent.find(checkBox).each(function () {
            $(this).wrap("<span class='checkbox'></span>");
            $(this).change(function () {
                if ($(this).is(":checked")) {
                    $(this).parent().addClass("checked");
                    $(this).parent().parent().addClass("checked");
                } else {
                    $(this).parent().removeClass("checked");
                    $(this).parent().parent().removeClass("checked");
                }
            });

            if ($(this).is(":checked")) {
                $(this).parent().addClass("checked");
                $(this).parent().parent().addClass("checked");
            } else {
                $(this).parent().removeClass("checked");
                $(this).parent().parent().removeClass("checked");
            }
        });

        parent.find(radioBtn).each(function () {
            var groupName = $(this).attr("name") + "-radio";

            $(this).click(function () {
                $('input:radio[name=' + $(this).attr('name') + ']').parent().parent().removeClass('checked');
                $(this).parent().parent().addClass('checked');
            });

            $(this).wrap("<span class='radio " + groupName + "'></span>");
            $(this).change(function () {
                if ($(this).is(":checked")) {
                    $('.' + groupName).removeClass("checked");
                    $(this).parent().addClass("checked");
                } else {
                    $(this).parent().removeClass("checked");
                }
            });
            if ($(this).is(":checked")) {
                $(this).parent().addClass("checked");
            } else {
                $(this).parent().removeClass("checked");
            }
        });
        // end of radio & checkbox

        $("[class*='modal-close']").click(function (e) {
            modalHolder.empty().removeClass("active");
            pageBody.removeClass("modal-open").removeAttr("style");
            stopEvents(e);
        });

        $(".hero-modal-slider, .about-slider").slick({
            dots: false,
            arrows: true,
            infinite: true,
            speed: 600,
            slidesToShow: 1,
            slidesToScroll: 1,
            adaptiveHeight: true,
            centerMode: false,
            variableWidth: false,
            fade: false,
            autoplay: false,
            autoplaySpeed: 7000,
            draggable: true,
            swipe: true,
            swipeToSlide: true,
            initialSlide: 0,
            pauseOnHover: true,
            vertical: false,
            focusOnSelect: false,
            accessibility: false,
            touchThreshold: 30
        });

        $(".about-license").slick({
            dots: false,
            arrows: true,
            infinite: true,
            speed: 600,
            slidesToShow: 3,
            slidesToScroll: 1,
            adaptiveHeight: true,
            centerMode: false,
            variableWidth: false,
            fade: false,
            autoplay: false,
            autoplaySpeed: 7000,
            draggable: true,
            swipe: true,
            swipeToSlide: true,
            initialSlide: 0,
            pauseOnHover: true,
            vertical: false,
            focusOnSelect: false,
            accessibility: false,
            touchThreshold: 30,

            responsive: [
                {
                    breakpoint: 481,
                    settings: {
                        slidesToShow: 2
                    }
                },
                {
                    breakpoint: 361,
                    settings: {
                        slidesToShow: 1
                    }
                }
            ]
        });
    }

    initFunc($(document));

    // modal
    //noinspection JSUnusedLocalSymbols
    var header = $("header"),
        footer = $("footer"),
        pageHtml = $("html"),
        pageBody = $("body"),
        desktopNavHolder = $(".desktop-nav-holder"),
        mobileNavHolder = $(".mobile-nav-holder"),
        headerNav = $(".header-nav"),
        main = $(".main"),
        scrollBarW = 0;

    function getScrollBarWidth() {
        var inner = document.createElement("p");
        inner.style.width = "100%";
        inner.style.height = "200px";

        var outer = document.createElement("div");
        outer.style.position = "absolute";
        outer.style.top = "0px";
        outer.style.left = "0px";
        outer.style.visibility = "hidden";
        outer.style.width = "200px";
        outer.style.height = "150px";
        outer.style.overflow = "hidden";
        outer.appendChild(inner);

        document.body.appendChild(outer);
        var w1 = inner.offsetWidth;
        outer.style.overflow = "scroll";
        var w2 = inner.offsetWidth;
        if (w1 === w2) w2 = outer.clientWidth;

        document.body.removeChild(outer);

        scrollBarW = (w1 - w2);
    }

    getScrollBarWidth();

    var modalHolder = $("#modal-holder");
    $(document).on("click", ".modal-trigger", function (e) {
        var target = "modals/" + $(this).attr("data-target") + ".html";
        modalHolder.empty();
        pageBody.addClass("modal-open").css("padding-right", scrollBarW);
        modalHolder.load(target, function () {
            var mod = $(".modal");
            initFunc(mod);
            $(this).addClass("active");
        });
        navClose();
        stopEvents(e);
    });
    // end of modal

    // matchHeight
    $('.category-item-content').matchHeight();
    // end of matchHeight

    // scroll effects
    $(window).on("load scroll", function () {
        $(".header-holder").each(function () {
            if ($(window).scrollTop() > 0) {
                $(this).addClass('fixed');
            } else {
                $(this).removeClass('fixed');
            }
        });
    });

    $(".horizontal-scroll").mCustomScrollbar({
        axis: 'x',
        scrollEasing: 'linear',
        scrollInertia: 100,
        autoDraggerLength: false,
        mouseWheel: {
            enable: true
        },
        advanced: {
            autoExpandHorizontalScroll: true
        },
        callbacks: {
            onScrollStart: function () {

            }
        }
    });
    // end of scroll effects

    // accordion
    function accordion(trigger, content) {
        trigger.click(function () {
            if ($(window).width() + scrollBarW <= 1024) {
                if ($(this).is(".active")) {
                    $(this).removeClass("active");
                    $(this).parent().find(content).slideUp("fast");
                    $(this).find("span.button-text").toggleClass("hidden");
                } else {
                    $(this).addClass("active");
                    $(this).parent().find(content).slideDown("fast");
                    $(this).find("span.button-text").toggleClass("hidden");
                }
            } else {
                if ($(this).is(".active")) {
                    $(this).removeClass("active");
                    $(this).parent().find(content).slideUp("fast");
                    $(this).find("span.button-text").toggleClass("hidden");
                } else {
                    trigger.removeClass("active");
                    content.slideUp("fast");
                    $(this).addClass("active");
                    $(this).parent().find(content).slideDown("fast");
                    $(this).find("span.button-text").toggleClass("hidden");
                }
            }
        });
    }

    accordion($(".section-title--trigger-js"), $(".faq-section-content"));

    function dropdown(trigger, content) {
        trigger.click(function () {

            if ($(this).is(".active")) {
                $(this).removeClass("active");
                $(this).parent().find(content).slideUp("fast");
                $(this).find("span.button-text").toggleClass("hidden");
            } else {
                $(this).addClass("active");
                $(this).parent().find(content).slideDown("fast");
                $(this).find("span.button-text").toggleClass("hidden");
            }
        });
    }

    dropdown($(".mobile-nav-section-title-js"), $(".mobile-nav-section-content"));
    // end of accordion

    // tabs
    function tabs(tabTrigger, tabContent) {
        $(tabTrigger).click(function () {
            $(this).addClass("current").siblings().removeClass("current")
                .parents().find(tabContent).eq($(this).index()).fadeIn(100).siblings(tabContent).hide();
        });
    }

    tabs($('.product-image-tabs li'), $('.product-image-tab'));
    // end of tabs

    // anchors
    var anchorBtn = $("a.anchor");
    anchorBtn.click(function () {
        var elementClick = $(this).attr("href");
        var destination = $(elementClick).offset().top - 124;
        $("html:not(:animated),body:not(:animated)").animate({scrollTop: destination}, 600);

        return false;
    });

    $(window).on("load scroll", function () {
        $(".scroll-section").each(function () {
            var thisId = "#" + $(this).attr("id");
            if ($(window).scrollTop() >= ($(this).offset().top - 130)) {
                anchorBtn.removeClass("current");
                $("a").each(function(index, element) {
                    if($(element).attr("href") === thisId) {
                        $(element).addClass("current");
                    }
                })
            }
        });
    });
    // end of anchors

    // fix in parent
    var sidebar = $("#aside");
    sidebar.stick_in_parent({
        offset_top: 124,
        parent: '.fixed-parent',
        recalc_every: true,
        bottoming: true,
        spacer: false
    });
    // end of fix in parent

    // responsive___________________
    $(window).on("load resize", function () {

        if ($(window).width() + scrollBarW <= 1024) {

        } else {

        }

        if ($(window).width() + scrollBarW <= 768) {

        } else {

        }
    });
    // end of responsive___________

    // navigation___________________
    var mobileNavClose = $(".mobile-nav-close"),
        mobileButton = $(".mobile-nav-butn"),
        mobileNav = $(".mobile-nav");

    function navClose() {
        $('.header-holder').removeClass('nav-open');
        mobileNav.removeClass("active");
        mobileButton.removeClass("active");
        mobileNavClose.removeClass("active");
    }

    function navOpen() {
        $('.header-holder').addClass('nav-open');
        mobileNav.addClass("active");
        mobileButton.addClass("active");
        mobileNavClose.addClass("active");
    }

    mobileNavClose.click(function () {
        navClose();
    });

    mobileButton.each(function () {
        $(this).click(function () {
            if ($(this).hasClass("active")) {
                navClose();
            } else {
                navOpen();
            }
        });
    });
    // end of navigation___________

    // Browser And Platform Detect_______________
    //noinspection JSUnresolvedVariable
    var iOS = /iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream;
    iOS && pageHtml.addClass("ios");
    //noinspection JSUndeclaredVariable
    browserDetect = {
        matchGroups: [
            [
                {uaString: "win", className: "win"},
                {uaString: "mac", className: "mac"},
                {uaString: "android", className: "android"},
                {uaString: "linux", className: "linux"}
            ],
            [
                {uaString: "msie", className: "trident"},
                {uaString: "applewebkit", className: "webkit"},
                {uaString: "gecko", className: "gecko"},
                {uaString: "opera", className: "presto"}
            ],
            [
                {uaString: "msie 8.0", className: "ie8"},
                {uaString: "msie 9.0", className: "ie9"},
                {uaString: "msie 10.0", className: "ie10"},
                {uaString: "firefox", className: "firefox"},
                {uaString: "opera", className: "opera"},
                {uaString: "chrome", className: "chrome"},
                {uaString: "safari", className: "safari"},
                {uaString: "unknown", className: "unknown"}
            ]
        ],

        init: function () {
            //noinspection CommaExpressionJS
            return this.detect(), this
        },
        addClass: function (a) {
            //noinspection JSUnusedGlobalSymbols,CommaExpressionJS
            this.pageHolder = document.documentElement, document.documentElement.className += " " + a
        },
        detect: function () {
            for (var a, s = 0; s < this.matchGroups.length; s++) {
                a = this.matchGroups[s];
                for (var e, i = 0; i < a.length; i++) { //noinspection CommaExpressionJS
                    if (e = a[i], "string" === typeof e.uaString) {
                        if (this.uaMatch(e.uaString)) {
                            this.addClass(e.className);
                            break
                        }
                    } else {
                        for (var t = 0, r = !0; t < e.uaString.length; t++) if (!this.uaMatch(e.uaString[t])) {
                            r = !1;
                            break
                        }
                        if (r) {
                            this.addClass(e.className);
                            break
                        }
                    }
                }
            }
        },
        uaMatch: function (a) {
            //noinspection CommaExpressionJS
            return this.ua || (this.ua = navigator.userAgent.toLowerCase()), -1 !== this.ua.indexOf(a)
        }
    }.init();

    // pixel ratio
    //noinspection JSUnresolvedVariable
    var retina = window.devicePixelRatio > 1 ? "retina" : "no-retina";
    pageHtml.addClass(retina);
    // end of pixel ratio

    if (pageHtml.is(".ie8, .ie9")) {
        modalHolder.load("modals/warning-modal.html");
    }
    // end of Browser And Platform Detect_______

    /*modalHolder.load('modals/hero-modal.html', function () {
     var mod = $('.modal');
     initFunc(mod);
     $(this).addClass("active");
     });*/

    // video preview
    function videoPreview (element) {
        var i;
        for (i = 0; i < element.length; i++) {
            element.each(function () {
                var href = $(this).attr('src');
                var arr = href.split('embed/');
                var code = arr[arr.length - 1];
                var name = $(this).parent().find('.article_name').html();

                var wrap = '<div class="video-preview"><div class="video-preview-image"><img src="https://img.youtube.com/vi/' + code + '/hqdefault.jpg" alt=""><svg class="icon-uniF1FF"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-uniF1FF"></use></svg></div><a data-fancybox="" href="' + href + '"></a></div>';

                if ($(this).parent().is('.video-list-item')) {
                    wrap = '<div class="video-preview"><div class="video-preview-image"><img src="https://img.youtube.com/vi/' + code + '/hqdefault.jpg" alt=""><svg class="icon-uniF1FF"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-uniF1FF"></use></svg></div><span class="article_name">' + name + '</span><a data-fancybox="" href="' + href + '"></a></div>'
                    $(this).parent().find('.article_name').remove();
                }

                $(this).parent().html(wrap);
            })
        }
    }
    videoPreview($(".testimonials-item iframe"));
    videoPreview($(".video-list-item iframe"));
    // end of video preview

    // request
    var url = document.location.href;
    $('#request-form-2 #request-form input[name=\"page_url\"]').val(url);
    $('#request-form-2 #request-form button').on('click', function () {
        yaCounter47825998.reachGoal('body-u-vas-goryat-sroki');
        $.ajax({
            url: 'index.php?route=extension/module/request_block_two/send_request',
            type: 'post',
            data: $('#request-form-2 #request-form input, #request-form-2 #request-form textarea'),
            dataType: 'json',
            success: function (json) {
                $('#request-form-2 #request-form').parent().find('.request-success').remove();
                $('#request-form-2 #request-form').parent().find('.request-error').remove();
                if (json['success']) {
                    // $('#request-form-2 #request-form').before('<div class="request-success" style=\"color: green; line-height: 30px; font-size: 17px; \">' + json['success'] + '</div>');
                    $('.success_modal').click();
                }
                if (json['error']) {
                    $('#request-form-2 #request-form').before('<div class="request-error" style=\"color: red; line-height: 30px; font-size: 17px; \">' + json['error'] + '</div>');
                }

            }

        });
    });
    // end of request

    // Lazy Load
    var myLazyLoad = new LazyLoad({data_src: 'original'});
    // end of Lazy Load
});

$(window).load(function () {
    $('.mobile_top_block ul').attr('class', 'mobile-nav-list');

    $("html").each(function () {
        $(this).addClass("loaded");

        if ($(this).is(".ios") || $(this).is(".android")) {
            $(this).addClass("mobile");
        } else {
            $(this).addClass("desktop");
        }
    });
});

