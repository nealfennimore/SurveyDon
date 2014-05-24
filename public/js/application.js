$(document).ready(function() {
  $('#create_submit').click(function(){
    var create_info = $('input.create').serialize();
    $.post('/signup', create_info, function(){
      window.location.href = '/';
    });
  });
});

$(document).ready(function() {
  $('#login_submit').click(function(){
    var login_info = $('input.login').serialize();
    $.post('/login', login_info, function(){
      window.location.href = '/';
    });
  });
});

$(document).ready(function() {
  $('#add_title').click(function(e){
    e.preventDefault();
    var surveyTitle = $('input.title').serialize();
    $.post('/survey/new', surveyTitle, function(){
      location.href = '/surveys/create';
    });
  });
});

$(document).ready(function() {
  $('#add_question').click(function(e){
    e.preventDefault();
    var newQuestion = $('input.question').serialize();
    $.post('/survey/new_question', newQuestion, function(){
      $('#add_type').show();
    });
  });
});

$(document).ready(function() {
  $('#finished').click(function(e){
    e.preventDefault();
    $.post('/finished', function(){
      location.href = '/';
    });
  });
});

$(document).ready(function() {
  $('#add_choices').click(function(e){
    e.preventDefault();
    var newChoices = $('input.choice').serialize();
    $.post('/choices', newChoices, function(){
      location.href = '/surveys/create';
    });
  });
});
