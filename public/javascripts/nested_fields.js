$(function() {
    $('.add_nested_fields').live('click', function() {
      link = this;

      $.get(link.getAttribute('data-url'), function(content) {
        $(link).after(content);
      });

      return false;
    });

    $('.remove_nested_fields').live('click', function() {
      $(this).closest('div.nested_fields').find('input[type=hidden]').val('1');
      $(this).closest('div.nested_fields').hide();
      return false;
    });
});
