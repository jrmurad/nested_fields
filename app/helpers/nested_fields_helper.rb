module NestedFieldsHelper
  def nested_fields_for(f, association, nested_partial=nil)
    reflection = f.object.class.reflect_on_association(association)
    is_has_one = reflection.macro == :has_one
    nested_partial ||= "#{is_has_one ? association.to_s.pluralize : association}/fields"

    add = add_nested_fields_path :association => association,
                                 :builder => f.class,
                                 :nested_partial => nested_partial,
                                 :parent_class => f.object.class,
                                 :parent_form => f.object_name


    partial = "nested_fields/#{'singular_' if is_has_one}nested_fieldset"

    locals = {:add_url => add,
              :association => association,
              :f => f,
              :nested_partial => nested_partial}

    if is_has_one
      associate = f.object.send(association);

      if associate.nil?
        locals[:associate] = reflection.klass.new
        locals[:has_zero] = true
      else
        locals[:associate] = associate
      end
    end

    render partial, locals
  end
end
