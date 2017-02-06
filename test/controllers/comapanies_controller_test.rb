require 'test_helper'

class ComapaniesControllerTest < ActionController::TestCase
  setup do
    @comapany = comapanies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comapanies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comapany" do
    assert_difference('Comapany.count') do
      post :create, comapany: { established: @comapany.established, intger: @comapany.intger, name: @comapany.name }
    end

    assert_redirected_to comapany_path(assigns(:comapany))
  end

  test "should show comapany" do
    get :show, id: @comapany
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comapany
    assert_response :success
  end

  test "should update comapany" do
    patch :update, id: @comapany, comapany: { established: @comapany.established, intger: @comapany.intger, name: @comapany.name }
    assert_redirected_to comapany_path(assigns(:comapany))
  end

  test "should destroy comapany" do
    assert_difference('Comapany.count', -1) do
      delete :destroy, id: @comapany
    end

    assert_redirected_to comapanies_path
  end
end
