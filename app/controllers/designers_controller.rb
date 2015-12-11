class DesignersController < ApplicationController
  def index
    if current_user.present?
      redirect_to "/users/#{current_user.id}"
    elsif current_designer.present?
    @designers = Designer.all
    else
      redirect_to "/"
    end
  end

  def show
    if current_user.present?
      redirect_to "/users/#{current_user.id}"
    elsif current_designer.present?
      @designer = Designer.find(params[:id])
      @piece = Piece.new
    else
      redirect_to "/"
    end

  end
end
