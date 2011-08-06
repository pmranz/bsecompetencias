require 'test_helper'

class PositionDependantsControllerTest < ActionController::TestCase
  setup do
    @position_dependant = position_dependants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:position_dependants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create position_dependant" do
    assert_difference('PositionDependant.count') do
      post :create, :position_dependant => @position_dependant.attributes
    end

    assert_redirected_to position_dependant_path(assigns(:position_dependant))
  end

  test "should show position_dependant" do
    get :show, :id => @position_dependant.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @position_dependant.to_param
    assert_response :success
  end

  test "should update position_dependant" do
    put :update, :id => @position_dependant.to_param, :position_dependant => @position_dependant.attributes
    assert_redirected_to position_dependant_path(assigns(:position_dependant))
  end

  test "should destroy position_dependant" do
    assert_difference('PositionDependant.count', -1) do
      delete :destroy, :id => @position_dependant.to_param
    end

    assert_redirected_to position_dependants_path
  end
end
