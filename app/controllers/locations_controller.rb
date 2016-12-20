class LocationsController < ApplicationController

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

  # GET /todo_lists/1
  # GET /todo_lists/1.json
  def show
  end

  # GET /todo_lists/new
  def new
    @locations = Location.new
  end

  # GET /todo_lists/1/edit
  def edit
  end

  # POST /todo_lists
  # POST /todo_lists.json
  def create
    @locations = Location.new(location_params)

    respond_to do |format|
      if @locations.save
        format.html { redirect_to @locations, notice: 'Todo list was successfully created.' }
        format.json { render action: 'show', status: :created, location: @locations }
      else
        format.html { render action: 'new' }
        format.json { render json: @locations.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_lists/1
  # PATCH/PUT /todo_lists/1.json
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

  # DELETE /todo_lists/1
  # DELETE /todo_lists/1.json
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
    params.permit(:title, :description, :target_page, :latitude, :longitude, :organization_id)
  end
end
