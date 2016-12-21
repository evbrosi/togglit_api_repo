class OrganizationController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def show
    organization = Organization.find_by(togglit_id: params[:togglit_id])

    if organization.nil?
      render json:{ error: "Organization was not found"},
             status: 404
    else
      render json: organization.as_json({include:[:locations, :employees]})
    end
  end

  def create
    @organization = Organization.new(organization_params)
      if @organization.save
          # format.html { redirect_to @location, notice: 'Todo list was successfully created.' }
          render json: { notice: "organization saved" }
        else
          format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_todo_list
    @employee = Employee.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def organization_params
    params.permit(:togglit_id)
  end
end
