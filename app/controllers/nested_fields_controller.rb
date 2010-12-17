class NestedFieldsController < ActionController::Base
  def add_nested_fields
    @association = params[:association].to_sym
    @builder = params[:builder].constantize
    @index = "#{Time.now.to_i}#{Time.now.usec}"
    @nested_partial = params[:nested_partial]
    @parent_form = params[:parent_form]

    @object = params[:parent_class].constantize.reflect_on_association(@association).klass.new

    respond_to do |format|
      format.js { render 'nested_fields/add_nested_fields' }
    end
  end
end
