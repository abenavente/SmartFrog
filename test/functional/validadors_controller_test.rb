require 'test_helper'

class ValidadorsControllerTest < ActionController::TestCase
  setup do
    @validador = validadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:validadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create validador" do
    assert_difference('Validador.count') do
      post :create, validador: @validador.attributes
    end

    assert_redirected_to validador_path(assigns(:validador))
  end

  test "should show validador" do
    get :show, id: @validador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @validador
    assert_response :success
  end

  test "should update validador" do
    put :update, id: @validador, validador: @validador.attributes
    assert_redirected_to validador_path(assigns(:validador))
  end

  test "should destroy validador" do
    assert_difference('Validador.count', -1) do
      delete :destroy, id: @validador
    end

    assert_redirected_to validadors_path
  end
end
