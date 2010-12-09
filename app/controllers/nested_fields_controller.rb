class NestedFieldsController < ActionController::Base
  def add_nested_fields
    @parent_class = params[:parent_class].constantize
    @association = params[:association].to_sym
    @builder = params[:builder].constantize
    @object = @parent_class.reflect_on_association(@association).klass.new
    @index = "#{Time.now.to_i}#{Time.now.usec}"

    respond_to do |format|
      format.js { render 'nested_fields/add_nested_fields' }
    end
  end
end
