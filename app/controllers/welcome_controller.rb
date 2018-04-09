class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def organizations
    @organizations= Organization.all
  end
end
