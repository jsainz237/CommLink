class LandingPageController < ApplicationController
  def index
  end

  def favorites
    if user_signed_in?
      @courses = current_user.find_up_voted_items
    else
      redirect_to new_user_session_path, alert: "You'll need to sign in to view this page."
    end
  end
end
