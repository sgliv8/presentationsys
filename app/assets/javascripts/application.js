// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require nprogress
//= require nprogress-turbolinks
//= require nprogress-ajax
//= require_tree .


$(document).ready(function(){
	$('#calculate').click(function(e){
		e.preventDefault();
		var sum = 0;

		sum = (parseInt($('input:radio[name="grade[opport]"]:checked').val()) + parseInt($('input:radio[name="grade[cost]"]:checked').val()) + parseInt($('input:radio[name="grade[timeline]"]:checked').val()) + parseInt($('input:radio[name="grade[obstacle]"]:checked').val()) + parseInt($('input:radio[name="grade[risk]"]:checked').val())) * 0.4 + parseInt($('input:radio[name="grade[point]"]:checked').val()) * 0.2 + parseInt($('input:radio[name="grade[fund]"]:checked').val()) * 0.4;
		//console.log(parseInt($('input:radio[name=opport]:checked').val()));
		var new_sum = sum.toString();
		console.log(typeof(new_sum));

		$('#grade_totalscore').val(new_sum);
	});
});
