class EmployeesController < ApplicationController
  skip_before_filter :verify_authenticity_token

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

  # GET
  def show
  end

  # GET
  def new
    @emploees = Employee.new
  end


  def edit
  end

  #post
  def create
    @organization = Organization.find_by(togglit_id: params[:togglit_id])
    @employee = Employee.new(employee_params)
    @employee.organization = @organization

    respond_to do |format|
      if @employee.save
        @organization.employees << @employee

        if @organization.save
          # format.html { redirect_to @location, notice: 'Todo list was successfully created.' }
          format.json { render json: @employee, status: :created }
        else
          format.json { render json: @employee.errors, status: :unprocessable_entity }
        end

      else
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT
  def update
    @organization = Organization.find_by(togglit_id: params[:togglit_id])
    @employee = Employee.new(location_params)
    @employee.organization = @organization

    if @employee.update(employee_params)
      format.html { redirect_to @employee, notice: 'Todo list was successfully updated.' }
      format.json { head :no_content }
    else
      format.html { render action: 'edit' }
      format.json { render json: @employee.errors, status: :unprocessable_entity }
    end
  end

  # DELETE
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to @employee }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_todo_list
    @employee = Employee.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def employee_params
    params.permit(:first_name, :last_name, :title, :picture_url, :email)
  end
end
