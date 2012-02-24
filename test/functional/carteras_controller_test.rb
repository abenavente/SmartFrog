require 'test_helper'

class CarterasControllerTest < ActionController::TestCase
  setup do
    @cartera = carteras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carteras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cartera" do
    assert_difference('Cartera.count') do
      post :create, cartera: @cartera.attributes
    end

    assert_redirected_to cartera_path(assigns(:cartera))
  end

  test "should show cartera" do
    get :show, id: @cartera
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cartera
    assert_response :success
  end

  test "should update cartera" do
    put :update, id: @cartera, cartera: @cartera.attributes
    assert_redirected_to cartera_path(assigns(:cartera))
  end

  test "should destroy cartera" do
    assert_difference('Cartera.count', -1) do
      delete :destroy, id: @cartera
    end

    assert_redirected_to carteras_path
  end
end
