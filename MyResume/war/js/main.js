var app = angular.module('StarterApp', ['ngMaterial']);

app.controller('AppCtrl', ['$scope', '$mdSidenav', function($scope, $mdSidenav){
  $scope.toggleSidenav = function(menuId) {
    $mdSidenav(menuId).toggle();
  };
 
}]);

$(document).ready(function() {
	var latitude	= "";
	var longitude	= "";
	getLocation();
	function getLocation() {
	    if (navigator.geolocation) {
	        navigator.geolocation.getCurrentPosition(showPosition);
	    } else { 
	        console.log("Geolocation is not supported by this browser.");
	    }
	}
	
	function showPosition(position) {
		latitude  = position.coords.latitude; 
		longitude = position.coords.longitude;	
		console.log(latitude);
		$.get("http://ipinfo.io", function(response) {
			
			console.log(response.ip);
			var map = {};
			if(latitude)
				map['latitude']  = latitude;
			if(longitude)
				map['longitude'] = longitude;
			
			map['ip']		 = response.ip;
			var dataString= JSON.stringify(map);
			getAjaxCall('post', dataString, 'updateDbOnPageLoad', function(response) {
				console.log(response)
			});
		}, "jsonp");
	}
	
	
	$('#logbtm').click(function(){
		var lUserName 		= $('#username').val();
		var lPass		 	= $('#password').val();
		if(lUserName != "" && lPass != "") {
			$('.loader').show();
			var lContent = {};
			lContent['username'] = lUserName;
			lContent['password'] = lPass;
			
			var lData = JSON.stringify(lContent);
			getAjaxCall('post', lData, 'admin_myresume', function(response) {
				$('.loader').hide();
				console.log(response)
				if(response) {
					window.location.href = '/admin';
					$('#incorrectLoginLabel').hide();
					
				} else {
					$('#incorrectLoginLabel').show();
					$('#incorrectLoginLabel').html("Username/Password incorrect");
				}
			});
		} else {
			$('#incorrectLoginLabel').show();
			$('#incorrectLoginLabel').html("Provide Username & Password");
		}
	});
	
	
	$('#submit-contact-detail').click(function() {
		var lName 			= $('#contact-name').val();
		var lEmail 			= $('#email').val();
		var lMsg 			= $('#message').val();
		if(lName != "" && lEmail != "" && lMsg != "") {
			var lContent = {};
			lContent['name'] = lName;
			lContent['email'] = lEmail;
			lContent['msg'] = lMsg;
			
			var lData = JSON.stringify(lContent);
			$('.loader').show();
			
			getAjaxCall('post', lData, 'sendMail', function(response) {
				console.log(response)
				$('.loader').hide();
				$('#finish').show();
				$('#finish').delay(2000).fadeOut('slow');
				$('#contact-name').val('');
				$('#email').val('');
				$('#message').val('');
			});
		} else {
			if(lName == "") {
				$('#contact-name').css('border', 'solid 1px red');
			} else {
				$('#contact-name').css('border', 'solid 2px #e9eeee');
			}
			if(lEmail == "" || !isValidEmailAddress(lEmail)) {
				$('#email').css('border', 'solid 1px red');
			} else {
				$('#email').css('border', 'solid 2px #e9eeee');
			}
			if(lMsg == "") {
				$('#message').css('border', 'solid 1px red');
			} else {
				$('#message').css('border', 'solid 2px #e9eeee');
			}
		}
		
	});

	$('#contact-name').keyup(function () { 
		var lName = $('#contact-name').val();
		if(lName == "") {
			$('#contact-name').css('border', 'solid 1px red');
		} else {
			$('#contact-name').css('border', 'solid 2px #e9eeee');
		}
	});
	
	$('#email').keyup(function () { 
		var lEmail = $('#email').val();
		if(lEmail == "" || !isValidEmailAddress(lEmail)) {
			$('#email').css('border', 'solid 1px red');
		} else {
			$('#email').css('border', 'solid 2px #e9eeee');
		}
	});
	
	$('#message').keyup(function () {
		var lMsg = $('#message').val();
		if(lMsg == "") {
			$('#message').css('border', 'solid 1px red');
		} else {
			$('#message').css('border', 'solid 2px #e9eeee');
		}
	});
	
	
	$(document).ready(function() {
		
		function textAnim() {
			window.timer = setInterval(
				function() {
					var a = $('#about-rotate-title span.active').next();
					$('#about-rotate-title span.active').addClass("rotate-out").removeClass("rotate-in active");
					if (!a.length) {
						a = $('#about-rotate-title').children().first()
					}
					a.addClass("rotate-in active").removeClass("rotate-out");

					var a = $('#about-rotate-work span.active').next();
					$('#about-rotate-work span.active').addClass("rotate-out").removeClass("rotate-in active");
					if (!a.length) {
						a = $('#about-rotate-work').children().first()
					}
					a.addClass("rotate-in active").removeClass("rotate-out");
				}, 2500);
			}
			textAnim();

			$(window).scroll(function() {
				var profileImg = $('#profile').visible(true, false, 'both');
				if (profileImg == true) {
					$('#profileSmall').fadeOut(200);
					$('#headerName').fadeOut(200);
				} else {
					$('#profileSmall').fadeIn(200);
					$('#headerName').fadeIn(200);
				}
			});
		    });

});

function isValidEmailAddress(emailAddress) {
    var pattern = new RegExp(/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/);
    return pattern.test(emailAddress);
};

function getAjaxCall(lType, lData, lUrl, callback) {
	$.ajax({
		url: lUrl,
		contentType: 'application/json', 
		type:lType,
		data: lData,
		success: callback
	});
}

var $element = $('#profile');
var $win = $('#header');
function percentageSeen () {
    var viewportHeight = $(window).height(),
        scrollTop = $win.scrollTop(),
        elementOffsetTop = $element.offset().top,
        elementHeight = $element.height();


    if (elementOffsetTop > (scrollTop + viewportHeight)) {
        return 0;
    } else if ((elementOffsetTop + elementHeight) < scrollTop) {
        return 100;
    } else {
        var distance = (scrollTop + viewportHeight) - elementOffsetTop;
        var percentage = distance / ((viewportHeight + elementHeight) / 100);
        percentage = Math.round(percentage);
        return percentage;
    }
}


(function() {
	  'use strict';
	  app.controller('fabContrl', function($scope) {
	      $scope.isOpen = false;
	      $scope.demo = {
	        isOpen: false,
	        count: 0,
	        selectedAlignment: 'md-left'
	      };
	    });
	})();


(function($){
    
    var $w = $(window);
    $.fn.visible = function(partial,hidden,direction){

        if (this.length < 1)
            return;

        var $t        = this.length > 1 ? this.eq(0) : this,
            t         = $t.get(0),
            vpWidth   = $w.width(),
            vpHeight  = $w.height(),
            direction = (direction) ? direction : 'both',
            clientSize = hidden === true ? t.offsetWidth * t.offsetHeight : true;

        if (typeof t.getBoundingClientRect === 'function'){

            // Use this native browser method, if available.
            var rec = t.getBoundingClientRect(),
                tViz = rec.top    >= 0 && rec.top    <  vpHeight,
                bViz = rec.bottom >  0 && rec.bottom <= vpHeight,
                lViz = rec.left   >= 0 && rec.left   <  vpWidth,
                rViz = rec.right  >  0 && rec.right  <= vpWidth,
                vVisible   = partial ? tViz || bViz : tViz && bViz,
                hVisible   = partial ? lViz || rViz : lViz && rViz;

            if(direction === 'both')
                return clientSize && vVisible && hVisible;
            else if(direction === 'vertical')
                return clientSize && vVisible;
            else if(direction === 'horizontal')
                return clientSize && hVisible;
        } else {

            var viewTop         = $w.scrollTop(),
                viewBottom      = viewTop + vpHeight,
                viewLeft        = $w.scrollLeft(),
                viewRight       = viewLeft + vpWidth,
                offset          = $t.offset(),
                _top            = offset.top,
                _bottom         = _top + $t.height(),
                _left           = offset.left,
                _right          = _left + $t.width(),
                compareTop      = partial === true ? _bottom : _top,
                compareBottom   = partial === true ? _top : _bottom,
                compareLeft     = partial === true ? _right : _left,
                compareRight    = partial === true ? _left : _right;

            if(direction === 'both')
                return !!clientSize && ((compareBottom <= viewBottom) && (compareTop >= viewTop)) && ((compareRight <= viewRight) && (compareLeft >= viewLeft));
            else if(direction === 'vertical')
                return !!clientSize && ((compareBottom <= viewBottom) && (compareTop >= viewTop));
            else if(direction === 'horizontal')
                return !!clientSize && ((compareRight <= viewRight) && (compareLeft >= viewLeft));
        }
    };

})(jQuery);