class NestedFieldsController < ActionController::Base
  def add_nested_fields
    @association = params[:association].to_sym
    @builder = params[:builder].constantize
    @index = "#{Time.now.to_i}#{Time.now.usec}"
    @nested_partial = params[:nested_partial]
    @parent_form = params[:parent_form]

    parent_class = params[:parent_class].constantize

    @objects = params[:copy_parent_id] ?
               parent_class.find(params[:copy_parent_id]).send(@association).reverse :
               Array.new(1, parent_class.reflect_on_association(@association).klass.new)

    respond_to do |format|
      format.js { render :partial => 'nested_fields/add_nested_fields', :collection => @objects, :as => :object }
    end
  end
end
