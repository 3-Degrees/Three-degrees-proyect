class WelcomeController < ApplicationController

  def index
  end

  def about
  end

  def organizations
    @organizations= Organization.all
  end

  def profile
    @organization= Organization.find(params[:id])

    @projects= @organization.projects.order(created_at: :desc).limit(4)
  end

  def all_organization_projects
    @organization= Organization.find(params[:id])

    @projects= @organization.projects.order(deadline: :desc).page(params[:page])
  end


end
