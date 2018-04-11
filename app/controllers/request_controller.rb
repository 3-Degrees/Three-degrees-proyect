class RequestController < ApplicationController
  def save
    @name = params[:name]
    @age = params[:age]
    @location = params[:location]
    @email = params[:email]
    @phone = params[:phone]
    @reason = params[:reason]
    @project = Project.find(params[:project_id])


    Request.create(name: @name, age: @age, location: @location, email: @email, phone: @phone, reason: @reason, project: @project)
  end
end
