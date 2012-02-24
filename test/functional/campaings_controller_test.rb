require 'test_helper'

class CampaingsControllerTest < ActionController::TestCase
  setup do
    @campaing = campaings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campaings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campaing" do
    assert_difference('Campaing.count') do
      post :create, campaing: @campaing.attributes
    end

    assert_redirected_to campaing_path(assigns(:campaing))
  end

  test "should show campaing" do
    get :show, id: @campaing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campaing
    assert_response :success
  end

  test "should update campaing" do
    put :update, id: @campaing, campaing: @campaing.attributes
    assert_redirected_to campaing_path(assigns(:campaing))
  end

  test "should destroy campaing" do
    assert_difference('Campaing.count', -1) do
      delete :destroy, id: @campaing
    end

    assert_redirected_to campaings_path
  end
end
