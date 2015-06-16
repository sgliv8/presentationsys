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
	}); 

	$('#genPdf').on('ajax:complete', function(){
		loading.hide();
	});
});
