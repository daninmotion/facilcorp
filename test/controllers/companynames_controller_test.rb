require 'test_helper'

class CompanynamesControllerTest < ActionController::TestCase
  setup do
    @companyname = companynames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companynames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create companyname" do
    assert_difference('Companyname.count') do
      post :create, companyname: { address: @companyname.address, name: @companyname.name, phone: @companyname.phone, title: @companyname.title }
    end

    assert_redirected_to companyname_path(assigns(:companyname))
  end

  test "should show companyname" do
    get :show, id: @companyname
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @companyname
    assert_response :success
  end

  test "should update companyname" do
    patch :update, id: @companyname, companyname: { address: @companyname.address, name: @companyname.name, phone: @companyname.phone, title: @companyname.title }
    assert_redirected_to companyname_path(assigns(:companyname))
  end

  test "should destroy companyname" do
    assert_difference('Companyname.count', -1) do
      delete :destroy, id: @companyname
    end

    assert_redirected_to companynames_path
  end
end
