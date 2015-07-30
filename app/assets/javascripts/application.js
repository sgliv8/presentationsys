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

    var errorsDisplay = $('.error');
    $('.cal_err').remove();

    errorsDisplay.each(function(index){
      $(this).remove();
    });

		var weights = $('strong.grade_weight');

    weights.each(function(index){
      var text = $(this).text();
      if(text === "%"){
        var weight = 0;
        console.log(weight);
      }else {
        var weight = parseFloat(text) / 100.0;
        console.log(weight);

        //console.log($(this));
      }

      var checked = parseInt($(this).parent().parent().parent().find('input[type=radio]:checked').val());
      console.log(checked);

      if(isNaN(checked)){
        $(this).parent().parent().parent().find('.grade-section').append('<div class="error" style="color: red; text-align: left;">Please select a score.</div>');
      } else {
        sum += checked * weight;
      }
      
    });

    var errorsLen = $('.error').length;
    console.log(errorsLen);
    if(errorsLen === 0){
      var new_sum = sum.toFixed(2).toString();
    } else {
      var new_sum = '';
      $('#cal_error_container').append('<div class="cal_err" style="color: red; text-align: left; margin-top: 20px;">Please fill in all the scores before calculating grade.</div>')
    }


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
  $('#comment-h').on('click', commentAccordion).parent().next().hide();
  $('#comment-i').on('click', commentAccordion).parent().next().hide();
  $('#comment-j').on('click', commentAccordion).parent().next().hide();
  $('#comment-k').on('click', commentAccordion).parent().next().hide();
  $('#comment-l').on('click', commentAccordion).parent().next().hide();
  $('#comment-m').on('click', commentAccordion).parent().next().hide();
  $('#comment-n').on('click', commentAccordion).parent().next().hide();
  $('#comment-o').on('click', commentAccordion).parent().next().hide();
  $('#comment-p').on('click', commentAccordion).parent().next().hide();
  $('#comment-q').on('click', commentAccordion).parent().next().hide();
  $('#comment-r').on('click', commentAccordion).parent().next().hide();
  $('#comment-s').on('click', commentAccordion).parent().next().hide();
  $('#comment-t').on('click', commentAccordion).parent().next().hide();

	// callback function
    function commentAccordion() {
    	$(this).toggleClass('special');
    	$(this).parent().next().toggle(800, 'swing');
    	return false;
    }

    $('[data-toggle="tooltip"]').tooltip();
});
