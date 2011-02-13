$(document).ready(function() {
  $('.nested_fieldset').each(function(i, nf) {
    $(nf).trigger('nested_fields_ready');
  });
});

$('.add_nested_fields').live('click', function() {
  $.ajax({
    context: this,
    dataType: 'html',
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

$('.nested_fields_has_one').live('change', function() {
  var hidden_field = $(this).closest('.nested_fieldset').find('.destroy_nested_one');
  $(hidden_field).val($(hidden_field).val() == 'true' ? 'false' : 'true');
  $(this).closest('.nested_fieldset').find('.nested_one').toggle();
});

function reposition(nested_fieldset, pos_fld) {
  $(nested_fieldset).find('> .nested_fields').each(function(i, nested_fields) {
    $(nested_fields).find('input[id$="' + pos_fld + '"]').val(i);
  });
}

$('.nested_fieldset').live('nested_fields_ready', function() {
  var pos_fld = this.getAttribute('data-positioned-by');

  if (pos_fld) {
    reposition(this, pos_fld);

    if (!$(this).hasClass('ui-sortable')) {
      $(this).sortable({update: function() { reposition(this, pos_fld); }});
    }
  }
});
