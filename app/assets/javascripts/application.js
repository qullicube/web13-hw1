// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require flatuipro
//= require_tree .
//= require jquery.ui.all

function handlePostSubmit(e,textarea) {
	if(!e.shiftKey){
		if(e.keyCode == 13){
			var form = $('form#new_post');
			var serializedData = form.serialize();
				$.ajax({
					url: form.attr('action'),
					method: "POST",
					data: serializedData,
					dataType: "JSON"
				}).success(function(data){
					console.log(data);
					$(textarea).focus();
					$(textarea).val('');
					$('#status-show').html(data);
				});

		}
	}
}

function handlePostKey(e) {
	if(!e.shiftKey) {
		if(e.keyCode == 13){
			return false;
		}
	}
	else{
		if(e.keyCode == 13){
			return true;
		}
	}
	return true;
}