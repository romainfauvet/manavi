class AdminController < ApplicationController

  before_filter :authenticate_user!, :verify_admin

  layout 'admin'
  def verify_admin
    authorize! :access, :admin
  end
end
