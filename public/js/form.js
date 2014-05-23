$(document).ready(function() {
  
  $('form#question_form').on('submit', function(e){
    e.preventDefault();
    $('form#add_type').show();
  });

  $('form#add_type').on('submit', function(e){
    e.preventDefault();
    
  });

});