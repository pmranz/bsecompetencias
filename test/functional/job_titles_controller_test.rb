require 'test_helper'

class JobTitlesControllerTest < ActionController::TestCase
  setup do
    @job_title = job_titles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_titles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_title" do
    assert_difference('JobTitle.count') do
      post :create, :job_title => @job_title.attributes
    end

    assert_redirected_to job_title_path(assigns(:job_title))
  end

  test "should show job_title" do
    get :show, :id => @job_title.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @job_title.to_param
    assert_response :success
  end

  test "should update job_title" do
    put :update, :id => @job_title.to_param, :job_title => @job_title.attributes
    assert_redirected_to job_title_path(assigns(:job_title))
  end

  test "should destroy job_title" do
    assert_difference('JobTitle.count', -1) do
      delete :destroy, :id => @job_title.to_param
    end

    assert_redirected_to job_titles_path
  end
end
