require 'test_helper'

class AbonadosControllerTest < ActionController::TestCase
  setup do
    @abonado = abonados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abonados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create abonado" do
    assert_difference('Abonado.count') do
      post :create, abonado: @abonado.attributes
    end

    assert_redirected_to abonado_path(assigns(:abonado))
  end

  test "should show abonado" do
    get :show, id: @abonado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @abonado
    assert_response :success
  end

  test "should update abonado" do
    put :update, id: @abonado, abonado: @abonado.attributes
    assert_redirected_to abonado_path(assigns(:abonado))
  end

  test "should destroy abonado" do
    assert_difference('Abonado.count', -1) do
      delete :destroy, id: @abonado
    end

    assert_redirected_to abonados_path
  end
end
