class AdminController < ApplicationController
  before_action :verify_admin

  def verify_admin
    redirect_to root_path unless current_user.admin?
  end
end
