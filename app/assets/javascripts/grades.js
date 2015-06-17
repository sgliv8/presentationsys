$(document).ready(function(){

	var loading = $("#loading");

	$('#genPdf').on('ajax:before', function(evt) {
	  loading.show();
	  // console.log($(this).val());
	  var groupInput = $('#group');
	  var projectInput = $('#project');
	  console.log(groupInput);
	  console.log(projectInput);

	  // we need both values to send a request
	  if(groupInput.val() && projectInput.val()) {
	    // add parameters
	    $(this).data('params', groupInput.serialize() + '&' + projectInput.serialize());
	    console.log($(this).data('params'));
	  }
	  else
	  {
	    return false;
	  }
	});

	$('#genPdf').on('ajax:success', function(evt, data) {

		console.log(data);

		var groupInput = $('#group').val();
	  	var projectInput = $('#project').val();

	  	$('#createPdf').html('<a href="/welcome/display.pdf?group='+ groupInput +'&amp;project='+ projectInput +'">Create PDF document</a>')
	}); 

	$('#genPdf').on('ajax:complete', function(){
		loading.hide();
	});
});
