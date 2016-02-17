require 'test_helper'

class MedicalFacilitiesControllerTest < ActionController::TestCase
  setup do
    @medical_facility = medical_facilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_facilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_facility" do
    assert_difference('MedicalFacility.count') do
      post :create, medical_facility: { demoID: @medical_facility.demoID, facilityID: @medical_facility.facilityID, phoneNumber: @medical_facility.phoneNumber, specialties: @medical_facility.specialties }
    end

    assert_redirected_to medical_facility_path(assigns(:medical_facility))
  end

  test "should show medical_facility" do
    get :show, id: @medical_facility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_facility
    assert_response :success
  end

  test "should update medical_facility" do
    patch :update, id: @medical_facility, medical_facility: { demoID: @medical_facility.demoID, facilityID: @medical_facility.facilityID, phoneNumber: @medical_facility.phoneNumber, specialties: @medical_facility.specialties }
    assert_redirected_to medical_facility_path(assigns(:medical_facility))
  end

  test "should destroy medical_facility" do
    assert_difference('MedicalFacility.count', -1) do
      delete :destroy, id: @medical_facility
    end

    assert_redirected_to medical_facilities_path
  end
end
