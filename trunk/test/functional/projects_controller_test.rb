require 'test_helper'
require 'projects_controller'

class ProjectsControllerTest < ActionController::TestCase

  fixtures :projects, :users

  def test_get_index
    get :index
    assert_response :success
  end
  
 test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, :project => {:title => "A test project",
      :description => "A dummy project",
      :created_by => users(:academic).id}
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, :id => projects(:project1).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => projects(:project1).id
    assert_response :success
  end

  test "should update project" do
    put :update, :id => projects(:project1).id, :project => { }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, :id => projects(:project1).id
    end

    assert_redirected_to projects_path
  end
end
