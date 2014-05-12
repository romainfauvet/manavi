class AdminController < ApplicationController

  before_filter :authenticate_user!, :verify_admin

  def verify_admin
    authorize! :access, :admin
  end
end
