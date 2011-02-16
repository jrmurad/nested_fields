$('a.add_nested_fields').live('click', function() {
  $.ajax({
    context: this,
    dataType: 'html',
    url: this.getAttribute('data-url'),
    success: function(content) {
      $(this).after(content);
      $(this).trigger('nested_fields_changed');
    }
  });

  return false;
});

$('a.remove_nested_fields').live('click', function() {
  $(this).closest('div.nested_fields').hide().find('input[type=hidden].nested_fields_destroy').val('1');
  $(this).closest('.nested_fieldset').trigger('nested_fields_changed');
  return false;
});

$('input[type=checkbox].nested_fields_has_one').live('change', function() {
  var hidden_field = $(this).closest('.nested_fieldset').find('input[type=hidden].destroy_nested_one');
  $(hidden_field).val( $(hidden_field).val() == '' ? 1 : '' );
  var nfs = $(this).closest('.nested_fieldset')
  nfs.find('.nested_one').toggle();
  nfs.trigger('nested_fields_changed')
});

/* reset position inputs to reflect addition or removal of associates */
function repositionNestedFields(nested_fieldset, pos_fld) {
  $(nested_fieldset).children('.nested_fields:visible').each(function(i, nested_fields) {
    $(nested_fields).find('input[id$="' + pos_fld + '"]').val(i);
  });
}
