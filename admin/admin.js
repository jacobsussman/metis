/*jslint browser: true*/
/*global $, jQuery, alert*/

$(document).ready(function () {
	"use strict";
	
	$("h2").hover(function () {
		$(this).toggleClass("navHover");
	});
});