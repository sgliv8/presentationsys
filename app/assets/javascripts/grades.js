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
		var createPdf = $('createPdf');
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
});
