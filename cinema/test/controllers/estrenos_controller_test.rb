require 'test_helper'

class EstrenosControllerTest < ActionController::TestCase
  setup do
    @estreno = estrenos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estrenos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estreno" do
    assert_difference('Estreno.count') do
      post :create, estreno: { Hora: @estreno.Hora, Nombre: @estreno.Nombre, Oferta: @estreno.Oferta, Sala: @estreno.Sala }
    end

    assert_redirected_to estreno_path(assigns(:estreno))
  end

  test "should show estreno" do
    get :show, id: @estreno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estreno
    assert_response :success
  end

  test "should update estreno" do
    patch :update, id: @estreno, estreno: { Hora: @estreno.Hora, Nombre: @estreno.Nombre, Oferta: @estreno.Oferta, Sala: @estreno.Sala }
    assert_redirected_to estreno_path(assigns(:estreno))
  end

  test "should destroy estreno" do
    assert_difference('Estreno.count', -1) do
      delete :destroy, id: @estreno
    end

    assert_redirected_to estrenos_path
  end
end
