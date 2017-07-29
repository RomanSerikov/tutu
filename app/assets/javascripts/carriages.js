var ready;

ready = function() {
  $('.seats').hide();

  $('#carriage_type').change(function() {
    var carriage_type;

    carriage_type = '.' + $(this).val();
    $('.seats').hide();
    $(carriage_type).show();
  });
};

$(document).ready(ready);
$(document).on('turbolinks:load', ready);
