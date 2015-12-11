class WelcomeController < ApplicationController

  before_action :authenticate_user!, :except => [:home]

  def home
    if current_user.present?
      redirect_to "/users/#{@user.id}/rec"
    elsif current_designer.present?
      redirect_to "/designers/#{@designer.id}"
    end
  end
end
