$(document).ready(function() {
  $(".showing_btn").click(function(event) {
    event.preventDefault();
    $('.formDiv').css({'display': 'inline-block'});
    $('.formDiv-wrapper').css({'display': 'flex'});
  })
  $(".hiding_btn").click(function(event) {
    event.preventDefault();
    $('.formDiv').hide();
    $('.formDiv-wrapper').hide();
  })
  $(".submit_link").click(function(event) {
    event.preventDefault();
    $("#new_todo_form").submit();
  })
  $('input').iCheck({
    checkboxClass: 'icheckbox_square-blue'
  })
  $('input').on('ifChanged', function(event) {
    $("#" + event.target.parentNode.parentNode.id).submit();
  })
  $('.project-selection').select2({
    placeholder: 'Категория',
    minimumResultsForSearch: -1,
    width:'100%',
  })
});
