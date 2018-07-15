    var $form = $("#msform");
    var current_fs = 0;
    var animating = false;

    function gotoStep(step) {
        if (animating || step === current_fs) {
            return;
        }

        animating = true;

        var $step_fs = $("fieldset", $form).eq(step);
        var $current_fs = $("fieldset", $form).eq(current_fs);
        // deactivate next steps
        $("#progressbar li:gt(" + step + ")", $form).removeClass("active");
        // activate step and previous
        $("#progressbar li:lt(" + (step + 1) + ")", $form).addClass("active");

        //show the next fieldset
        $step_fs.show();
        //hide the current fieldset with style
        $current_fs.animate({ opacity: 0 }, {
            step: function (now, mx) {
                //as the opacity of current_fs reduces to 0 - stored in "now"
                //1. scale current_fs down to 80%
                var scale = 1 - (1 - now) * 0 ;
                //2. bring next_fs from the right(50%)
                var left = (now * 50) + "%";
                //3. increase opacity of next_fs to 1 as it moves in
                var opacity = 1 - now;
                $current_fs.css({
                    'transform': 'scale(' + scale + ')',
                    'position': 'absolute'
                });
                $step_fs.css({ 'left': left, 'opacity': opacity });
            },
            duration: 800,
            complete: function () {
                $current_fs.hide();
                current_fs = step;
                animating = false;
            },
            //this comes from the custom easing plugin
            easing: 'easeInOutBack'
        });
    }

    $(".next", $form).click(function() {
        gotoStep(current_fs + 1);
    });

    $(".previous", $form).click(function() {
        gotoStep(current_fs - 1);
    });

    $("#progressbar li", $form).click(function() {
        var step = $("#progressbar li", $form).index($(this));
        gotoStep(step);
    });

    $(".submit", $form).click(function() {
        return false;
    });
	
	
	 