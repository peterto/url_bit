// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function() {
	$("form").submit(function(e) {
		e.preventDefault();
		$.ajax({

				type: "POST",
				url: "/urls",
				async: true,
				dataType: "json",
				data: $(this).serialize(), 
				success: function(response) {
					console.log(response);

					$("form").after('<p><a href="' + response.source + '">' + location.href + response.mini_link + '</a></p>');
				}

			});
	});


});