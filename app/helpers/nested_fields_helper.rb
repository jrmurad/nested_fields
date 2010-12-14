module NestedFieldsHelper
  def nested_fields_js
    render 'nested_fields/js'
  end

  def nested_fields_for(f, association, nested_partial="#{association}/fields")
    add = add_nested_fields_path :parent_class => f.object.class, :association => association, :builder => f.class

    render 'nested_fields/nested_fields', :add_url => add,
                                          :association => association,
                                          :f => f,
                                          :nested_partial => nested_partial
  end

  def link_to_remove_fields(f, text='Remove')
    link_to text, '#', :class => :remove_nested_fields
  end
end
