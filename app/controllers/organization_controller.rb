class OrganizationController < ApplicationController

  def show
    organization = Organization.find_by(togglit_id: params[:togglit_id])

    if organization.nil?
      render json:{ error: "Organization was not found"},
             status: 404
    else
      render json: organization.as_json({include:[:locations, :employees]})
    end
  end
end
