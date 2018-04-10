class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def organizations
    @organizations= Organization.all
  end

  def profile
    @organization= Organization.find_by(params[:id])
  end
end
