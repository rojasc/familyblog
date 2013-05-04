# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
	$('.show_comments').click (event) ->
		event.preventDefault();
		$(this).next().slideToggle()

		post_id = $(this).parents('.post').prop('id').match(/_(\d+)$/).pop()

		$.ajax
			url: "/posts/"  + post_id + "/comments"
			type: 'get'
			dataType: 'json'
			success: (data) ->
				for comment in data.comments
					alert('hi')


	$('.new_comment').bind 'ajax:success', (event, data) ->
		if(data.post_id) 
			$('#comment_for_post_'+data.post_id).slideToggle();
		