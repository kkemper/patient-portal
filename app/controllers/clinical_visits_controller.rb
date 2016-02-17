class ClinicalVisitsController < ApplicationController
  before_action :set_clinical_visit, only: [:show, :edit, :update, :destroy]

  # GET /clinical_visits
  # GET /clinical_visits.json
  def index
    @clinical_visits = ClinicalVisit.all
  end

  # GET /clinical_visits/1
  # GET /clinical_visits/1.json
  def show
  end

  # GET /clinical_visits/new
  def new
    @clinical_visit = ClinicalVisit.new
  end

  # GET /clinical_visits/1/edit
  def edit
  end

  # POST /clinical_visits
  # POST /clinical_visits.json
  def create
    @clinical_visit = ClinicalVisit.new(clinical_visit_params)

    respond_to do |format|
      if @clinical_visit.save
        format.html { redirect_to @clinical_visit, notice: 'Clinical visit was successfully created.' }
        format.json { render :show, status: :created, location: @clinical_visit }
      else
        format.html { render :new }
        format.json { render json: @clinical_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinical_visits/1
  # PATCH/PUT /clinical_visits/1.json
  def update
    respond_to do |format|
      if @clinical_visit.update(clinical_visit_params)
        format.html { redirect_to @clinical_visit, notice: 'Clinical visit was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinical_visit }
      else
        format.html { render :edit }
        format.json { render json: @clinical_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinical_visits/1
  # DELETE /clinical_visits/1.json
  def destroy
    @clinical_visit.destroy
    respond_to do |format|
      format.html { redirect_to clinical_visits_url, notice: 'Clinical visit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinical_visit
      @clinical_visit = ClinicalVisit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinical_visit_params
      params.require(:clinical_visit).permit(:visitID, :patientID, :physicianID, :facilityID, :date, :visitTime, :visitType, :diagnosis)
    end
end
