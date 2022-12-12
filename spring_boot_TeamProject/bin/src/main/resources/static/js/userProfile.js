/**
 * userProfile.js
 */

$(document).ready(function() {
	$('.menu').hide();
	$('.writing').css('color','red');
	$('.write').show();
	$btn = $('.btn');

	var menu = ["write", "comment", "bookmark"];
	$btn.each(function(index) {
		$(this).on('click', function() {
			$('.btn').css('color','#7144A0');
			$(this).css('color','red');
			$('.menu').hide();
			$('.' + menu[index]).show();
		});
	});

});