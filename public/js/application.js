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

