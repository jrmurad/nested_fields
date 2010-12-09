$(function() {
    $('.add_fields').live('click', function() {
      link = this;

      $.get(link.getAttribute('data-url'), function(content) {
        $(link).after(content);
      });

      return false;
    });

    $('.remove_fields').live('click', function() {
      $(this).closest('ol').find('input[type=hidden]').val('1');
      $(this).closest('ol').hide();
      return false;
    });
});
