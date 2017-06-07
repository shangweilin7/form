class InformationsController < ApplicationController
  def new
    @fields = Field.all
    @information = Information.new
  end

  def create
    @information = current_user.informations.new(params_information)

    if @information.save
      redirect_to root
    else
      render :new
    end
  end

  private

  def params_information
    params.require(:information).permit(:field_id, :data)
  end
end
