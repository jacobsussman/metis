/*jslint browser: true*/
/*global $, jQuery, alert*/

$(document).ready(function () {
	"use strict";
	
//	$(".navIcon").hover(function () {
//		$(this).toggleClass("navHover");
//	});
//	
//	
	
	
    $("img")
        .mouseover(function () {
            var src = $(this).attr("src").match(/[^\.]+/) + "over.svg";
            $(this).attr("src", src);
        })
        .mouseout(function () {
            var src = $(this).attr("src").replace("over.svg", ".svg");
            $(this).attr("src", src);
        });

	
});