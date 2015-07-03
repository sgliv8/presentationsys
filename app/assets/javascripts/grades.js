$(document).ready(function(){

	var loading = $("#loading");

	$('#genPdf').on('ajax:before', function(evt) {
	  loading.show();
	  // console.log($(this).val());
	  var groupInput = $('#group');
	  //var projectInput = $('#project');
	  console.log(groupInput);
	  //console.log(projectInput);

	  // we need both values to send a request
	  if(groupInput.val()) {
	    // add parameters
	    $(this).data('params', groupInput.serialize());
	    console.log($(this).data('params'));
	  }
	  else
	  {
	    return false;
	  }
	});

	$('#genPdf').on('ajax:success', function(evt, data) {

		var error = $('.error');
		var createPdf = $('#createPdf');
		var search_result = $('.search_result');

		error.html('');
		createPdf.html('');
		search_result.html('');

		console.log(data);

		if(data.comments.length == 0 && data.grades.length == 0){
			error.html('<h2>There is no data!</h2>');
		}else {

			var template = $("#search_result_template").html();
			var render = Handlebars.compile(template);

			var output = render(data);
		            
			search_result.html(output);

			var groupInput = $('#group').val();
		  	//var projectInput = $('#project').val();

		  	createPdf.html('<a class="btn btn-primary" href="/welcome/display.pdf?group='+ groupInput +'">Create PDF document</a>');

		}

	}); 

	$('#genPdf').on('ajax:complete', function(){
		loading.hide();

		$('#group').val('');
		//$('#project').val('');

	});





	//retrieve all new data from different round
	$('#comment_course_id').on('ajax:before', function(evt) {
	  loading.show();
	  // console.log($(this).val());
	  var courseInput = $('#comment_course_id');
	  //var userInput = $('#record_user_id');
	  console.log(courseInput);
	  //console.log(userInput);

	  // we need both values to send a request
	  if(courseInput.val()) {
	    // add parameters
	    //roundInput.val(roundInput.val() - 1);
	    $(this).data('params', courseInput.serialize());
	    console.log($(this).data('params'));
	  }
	  else
	  {
	    return false;
	  }
	});


	// this handler will be invoked when the request has completed successfully
	$('#comment_course_id').on('ajax:success', function(evt, data) {
		//var roundInput = $('#round');

			console.log(data.questions);
			//console.log(data.questions[0].id);
			

			$('input[name="comment[course_id]"]').val(data.questions[0].id );


			$('#comment_q1').html(data.questions[0].cq1);
			$('#comment_q2').html(data.questions[0].cq2);
			$('#comment_q3').html(data.questions[0].cq3);
			$('#comment_q4').html(data.questions[0].cq4);

			
		
		
	  // data is now an array containing your objects 
	  // you can dump them on firebug or your web browser console using console.log(data); 
	}); 

	$('#comment_course_id').on('ajax:complete', function(){
		loading.hide();
	});



	//retrieve all new data from different round
	$('#grade_course_id').on('ajax:before', function(evt) {
	  loading.show();
	  // console.log($(this).val());
	  var courseInput = $('#grade_course_id');
	  //var userInput = $('#record_user_id');
	  console.log(courseInput);
	  //console.log(userInput);

	  // we need both values to send a request
	  if(courseInput.val()) {
	    // add parameters
	    //roundInput.val(roundInput.val() - 1);
	    $(this).data('params', courseInput.serialize());
	    console.log($(this).data('params'));
	  }
	  else
	  {
	    return false;
	  }
	});


	// this handler will be invoked when the request has completed successfully
	$('#grade_course_id').on('ajax:success', function(evt, data) {
		//var roundInput = $('#round');

			console.log(data.questions);
			//console.log(data.questions[0].id);
			

			$('input[name="grade[course_id]"]').val(data.questions[0].id );


			$('#grade_q1').html(data.questions[0].gq1);
			$('#grade_q2').html(data.questions[0].gq2);
			$('#grade_q3').html(data.questions[0].gq3);
			$('#grade_q4').html(data.questions[0].gq4);
			$('#grade_q5').html(data.questions[0].gq5);
			$('#grade_q6').html(data.questions[0].gq6);
			$('#grade_q7').html(data.questions[0].gq7);

			
		
		
	  // data is now an array containing your objects 
	  // you can dump them on firebug or your web browser console using console.log(data); 
	}); 

	$('#grade_course_id').on('ajax:complete', function(){
		loading.hide();
	});
});
