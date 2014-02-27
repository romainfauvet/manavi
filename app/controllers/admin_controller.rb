class AdminController < ApplicationController

  before_filter :verify_admin

  def verify_admin
    authorize! :access, :admin
  end
end
