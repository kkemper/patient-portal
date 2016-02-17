require 'test_helper'

class DemographicsControllerTest < ActionController::TestCase
  setup do
    @demographic = demographics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:demographics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create demographic" do
    assert_difference('Demographic.count') do
      post :create, demographic: { address: @demographic.address, city: @demographic.city, country: @demographic.country, demoID: @demographic.demoID, latitude: @demographic.latitude, longitude: @demographic.longitude, state: @demographic.state, zipcode: @demographic.zipcode }
    end

    assert_redirected_to demographic_path(assigns(:demographic))
  end

  test "should show demographic" do
    get :show, id: @demographic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @demographic
    assert_response :success
  end

  test "should update demographic" do
    patch :update, id: @demographic, demographic: { address: @demographic.address, city: @demographic.city, country: @demographic.country, demoID: @demographic.demoID, latitude: @demographic.latitude, longitude: @demographic.longitude, state: @demographic.state, zipcode: @demographic.zipcode }
    assert_redirected_to demographic_path(assigns(:demographic))
  end

  test "should destroy demographic" do
    assert_difference('Demographic.count', -1) do
      delete :destroy, id: @demographic
    end

    assert_redirected_to demographics_path
  end
end
