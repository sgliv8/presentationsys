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
//= require bootstrap-sprockets
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
		var new_sum = sum.toFixed(1).toString();
		console.log(typeof(new_sum));

		$('#grade_totalscore').val(new_sum);
	});


	//sweet alert delete confrim button
	$('.delete-confirm').on('click', function(e){
		$(this).parent().children('a').addClass('current');
		console.log($(this).parent().children('a'));
		e.preventDefault();
		swal({
            title: "Are you sure?",
            text: "You will not be able to recover this record!",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: '#DD6B55',
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: "No, cancel plx!",
            closeOnConfirm: false,
            closeOnCancel: false
          },
          function(isConfirm){
            if (isConfirm){
              $('.current').trigger('click');
              swal("Deleted successfully!", "The record has been deleted!", "success");
              //$('#delete').css('display', 'block');
              
              //$('#delete').css('display', 'none');
            } else {
              swal("Cancelled", "The records are safe :)", "error");
            }
        });
	});


	$('#sticky').sticky();
    
    // comment section accordion
	$('#comment-a').on('click', commentAccordion).parent().next().hide();
	$('#comment-b').on('click', commentAccordion).parent().next().hide();
	$('#comment-c').on('click', commentAccordion).parent().next().hide();
	$('#comment-d').on('click', commentAccordion).parent().next().hide();
	$('#comment-e').on('click', commentAccordion).parent().next().hide();
	$('#comment-f').on('click', commentAccordion).parent().next().hide();
	$('#comment-g').on('click', commentAccordion).parent().next().hide();

	// callback function
    function commentAccordion() {
    	$(this).toggleClass('special');
    	$(this).parent().next().toggle(800, 'swing');
    	return false;
    }

    $('[data-toggle="tooltip"]').tooltip();
});
