$('.add_nested_fields').live('click', function() {
  $.ajax({
    context: this,
    url: this.getAttribute('data-url'),
    success: function(content) {
      $(this).after(content);
      $(this).trigger('nested_fields_ready');
    }
  });

  return false;
});

$('.remove_nested_fields').live('click', function() {
  $(this).closest('div.nested_fields').find('input[type=hidden]').val('1');
  $(this).closest('div.nested_fields').hide();
  return false;
});
