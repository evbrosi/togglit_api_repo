class LocationsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    organization = Organization.find_by(togglit_id: params[:togglit_id])

    if organization.nil?
      render json:{ error: "Organization was not found"},
             status: 404
    else
      render json: organization.locations,
             status: 200
    end
  end

  # GET
  def show
  end

  # GET
  def new
    @locations = Location.new
  end

  #get
  def edit
  end

  #post
  def create
    @organization = Organization.find_by(togglit_id: params[:togglit_id])
    @location = Location.new(location_params)
    @location.organization = @organization

    respond_to do |format|
      if @location.save
        @organization.locations << @location

        if @organization.save
          # format.html { redirect_to @location, notice: 'Todo list was successfully created.' }
          format.json { render json: @location, status: :created }
        else
          format.json { render json: @organization.errors, status: :unprocessable_entity }
        end
      else
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT
  def update
    respond_to do |format|
      if @locations.update(location_params)
        format.html { redirect_to @locations, notice: 'Todo list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @locations.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE
  def destroy
    @locations.destroy
    respond_to do |format|
      format.html { redirect_to @locations }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_todo_list
    @locations = Location.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def location_params
    params.permit(:title, :description, :target_page, :latitude, :longitude)
  end
end
