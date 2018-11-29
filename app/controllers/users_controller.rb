class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  acts_as_voter

end
