class Admin::FieldsController < ApplicationController
  def index
    @fields = Field.all
    @field = Field.new
  end

  def create
    @field = Field.new(params_field)

    if @field.save
      redirect_to admin_fields_path
    else
      @field  = Field.all
      render :index
    end
  end

  def update
    @field = Field.find(params[:id])

    if @field.update(params_field)
      redirect_to admin_fields_path
    else
      @field = Filed.all
      render :idnex
    end
  end

  private

  def params_field
    params.require(:field).permit(:name)
  end
end
