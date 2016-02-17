class MedicalFacilitiesController < ApplicationController
  before_action :set_medical_facility, only: [:show, :edit, :update, :destroy]

  # GET /medical_facilities
  # GET /medical_facilities.json
  def index
    @medical_facilities = MedicalFacility.all
  end

  # GET /medical_facilities/1
  # GET /medical_facilities/1.json
  def show
  end

  # GET /medical_facilities/new
  def new
    @medical_facility = MedicalFacility.new
  end

  # GET /medical_facilities/1/edit
  def edit
  end

  # POST /medical_facilities
  # POST /medical_facilities.json
  def create
    @medical_facility = MedicalFacility.new(medical_facility_params)

    respond_to do |format|
      if @medical_facility.save
        format.html { redirect_to @medical_facility, notice: 'Medical facility was successfully created.' }
        format.json { render :show, status: :created, location: @medical_facility }
      else
        format.html { render :new }
        format.json { render json: @medical_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_facilities/1
  # PATCH/PUT /medical_facilities/1.json
  def update
    respond_to do |format|
      if @medical_facility.update(medical_facility_params)
        format.html { redirect_to @medical_facility, notice: 'Medical facility was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_facility }
      else
        format.html { render :edit }
        format.json { render json: @medical_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_facilities/1
  # DELETE /medical_facilities/1.json
  def destroy
    @medical_facility.destroy
    respond_to do |format|
      format.html { redirect_to medical_facilities_url, notice: 'Medical facility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_facility
      @medical_facility = MedicalFacility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_facility_params
      params.require(:medical_facility).permit(:facilityID, :demoID, :specialties, :phoneNumber)
    end
end
