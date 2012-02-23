require 'test_helper'

class OperadorsControllerTest < ActionController::TestCase
  setup do
    @operador = operadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operador" do
    assert_difference('Operador.count') do
      post :create, operador: @operador.attributes
    end

    assert_redirected_to operador_path(assigns(:operador))
  end

  test "should show operador" do
    get :show, id: @operador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operador
    assert_response :success
  end

  test "should update operador" do
    put :update, id: @operador, operador: @operador.attributes
    assert_redirected_to operador_path(assigns(:operador))
  end

  test "should destroy operador" do
    assert_difference('Operador.count', -1) do
      delete :destroy, id: @operador
    end

    assert_redirected_to operadors_path
  end
end
