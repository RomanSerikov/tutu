function editObj(linkSelector, id, formId, objId) {
  $(document).on('turbolinks:load', function() {
    $(linkSelector).click(function(e) {
      e.preventDefault();
      var obj;
      var form;
      var current;

      obj = $(this).data(id);
      form = $(formId + obj);
      current = $(objId + obj);

      if (!$(this).hasClass('cancel')) {
        $(this).html('Отменить');
        $(this).addClass('cancel');
      } else {
        $(this).html('Изменить');
        $(this).removeClass('cancel');
      }

      form.toggle();
      current.toggle();

    });
  });
};
