$(document).ready(function() {

  $('#signup').click(function(e){
    e.preventDefault();
    $.get('/signup', function(response){
      $('body').empty();
      $('body').append(response);
    });
  });


  $('#create_account').click(function(e){
    e.preventDefault();
    var create_info = $('input.create').serialize();
    $.post('/signup', create_info, function(response){
      $('body').empty();
      $('body').append(response);
    });
  });

  $('#login_submit').click(function(){
    var login_info = $('input.login').serialize();
    $.post('/login', login_info, function(){
      location.href = '/'
    });
  });

  $('#add_title').click(function(e){
    e.preventDefault();
    var surveyTitle = $('input.title').serialize();
    $.post('/survey/new', surveyTitle, function(){
      location.href = '/surveys/create';
    });
  });

  $('#add_question').click(function(e){
    e.preventDefault();
    var newQuestion = $('input.question').serialize();
    $.post('/survey/new_question', newQuestion, function(){
      $('#add_type').show();
    });
  });

  $('#add_choices').click(function(e){
    e.preventDefault();
    var newChoices = $('input.choice').serialize();
    $.post('/choices', newChoices, function(){
      $('#add_question').show();
    });
  });

  $('#finished').click(function(e){
    e.preventDefault();
    $.post('/finished', function(){
      location.href = '/';
    });
  });

});
