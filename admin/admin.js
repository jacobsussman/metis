/*jslint browser: true*/
/*global $, jQuery, alert*/

$(document).ready(function () {
	"use strict";
	$('#nav > a').hover(function () {
		$(this).toggleClass('navHover');
	});
});