require 'test_helper'

class CoveragesControllerTest < ActionController::TestCase
  setup do
    @coverage = coverages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coverages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coverage" do
    assert_difference('Coverage.count') do
      post :create, coverage: { expirationDate: @coverage.expirationDate, patientID: @coverage.patientID, policyID: @coverage.policyID }
    end

    assert_redirected_to coverage_path(assigns(:coverage))
  end

  test "should show coverage" do
    get :show, id: @coverage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coverage
    assert_response :success
  end

  test "should update coverage" do
    patch :update, id: @coverage, coverage: { expirationDate: @coverage.expirationDate, patientID: @coverage.patientID, policyID: @coverage.policyID }
    assert_redirected_to coverage_path(assigns(:coverage))
  end

  test "should destroy coverage" do
    assert_difference('Coverage.count', -1) do
      delete :destroy, id: @coverage
    end

    assert_redirected_to coverages_path
  end
end
