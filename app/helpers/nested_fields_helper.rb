module NestedFieldsHelper
  def nested_fields_for(f, association, nested_partial="#{association}/fields")
    add = add_nested_fields_path :association => association,
                                 :builder => f.class,
                                 :nested_partial => nested_partial,
                                 :parent_class => f.object.class,
                                 :parent_form => f.object_name

    render 'nested_fields/nested_fieldset', :add_url => add,
                                            :association => association,
                                            :f => f,
                                            :nested_partial => nested_partial
  end
end
