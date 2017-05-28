$( document ).ready(function() {

  console.log('loading...');

  $('#job_posting_table').DataTable({
    "order": [[ 0, "desc" ]]
  });

  $('#button_update_job').on('click', function() {
    var loc = $('#location').val().trim();
    var desc = $('#description').val().trim();

    if (loc && desc) {
      $('form').submit();
    }
    else {
      alert("Need to fill out all required field(s).");
      return false;
    }
    
  });


});