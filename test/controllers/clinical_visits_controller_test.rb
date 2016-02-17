require 'test_helper'

class ClinicalVisitsControllerTest < ActionController::TestCase
  setup do
    @clinical_visit = clinical_visits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinical_visits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinical_visit" do
    assert_difference('ClinicalVisit.count') do
      post :create, clinical_visit: { date: @clinical_visit.date, diagnosis: @clinical_visit.diagnosis, facilityID: @clinical_visit.facilityID, patientID: @clinical_visit.patientID, physicianID: @clinical_visit.physicianID, visitID: @clinical_visit.visitID, visitTime: @clinical_visit.visitTime, visitType: @clinical_visit.visitType }
    end

    assert_redirected_to clinical_visit_path(assigns(:clinical_visit))
  end

  test "should show clinical_visit" do
    get :show, id: @clinical_visit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinical_visit
    assert_response :success
  end

  test "should update clinical_visit" do
    patch :update, id: @clinical_visit, clinical_visit: { date: @clinical_visit.date, diagnosis: @clinical_visit.diagnosis, facilityID: @clinical_visit.facilityID, patientID: @clinical_visit.patientID, physicianID: @clinical_visit.physicianID, visitID: @clinical_visit.visitID, visitTime: @clinical_visit.visitTime, visitType: @clinical_visit.visitType }
    assert_redirected_to clinical_visit_path(assigns(:clinical_visit))
  end

  test "should destroy clinical_visit" do
    assert_difference('ClinicalVisit.count', -1) do
      delete :destroy, id: @clinical_visit
    end

    assert_redirected_to clinical_visits_path
  end
end
