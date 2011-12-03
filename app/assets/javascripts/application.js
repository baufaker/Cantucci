// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require scripts
//= require jquery_ujs
//= require_tree .

var kkeys = [], konami = "38,38,40,40,37,39,37,39,66,65";  

$(document).keydown(function(e) {  
	
	kkeys.push( e.keyCode );  
	if ( kkeys.toString().indexOf( konami ) >= 0 ){  
		$(document).unbind('keydown',arguments.callee);  
		alert('ENTRA LÁ NO SITE DO CARA! www.sitedocara.com.br! VAI! VAI!');
	}  
});