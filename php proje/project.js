$(document).ready(function() {
    var current_fs, next_fs, previous_fs; // Variables to store references to fieldsets
  
    $(".next").click(function() {
      current_fs = $(this).parent();
      next_fs = $(this).parent().next();
  
      // Activate the corresponding step in the progress bar
      $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
  
      // Hide the current fieldset
      current_fs.hide();
  
      // Show the next fieldset
      next_fs.show();
    });
  
    $(".previous").click(function() {
      current_fs = $(this).parent();
      previous_fs = $(this).parent().prev();
  
      // Disable the corresponding step in the progress bar
      $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
  
      // Hide the current fieldset
      current_fs.hide();
  
      // Show the previous fieldset
      previous_fs.show();
    });
  });
  