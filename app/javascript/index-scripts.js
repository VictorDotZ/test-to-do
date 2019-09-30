$(document).ready(function() {
    $(".showing_btn").click(function(event) {
      event.preventDefault();
      $('.formDiv').show();
    })
    $(".hiding_btn").click(function(event) {
      event.preventDefault();
      $('.formDiv').hide();
    })
    $(".submit_link").click(function(event) {
      event.preventDefault();
      $("#new_todo_form").submit();
    })
  });