class EmployeesController < ApplicationController
  def index
    organization = Organization.find_by(togglit_id: params[:togglit_id])

    if organization.nil?
      render json:{ error: "Organization was not found"},
             status: 404
    else
      render json: organization.employees,
             status: 200
    end
  end
end