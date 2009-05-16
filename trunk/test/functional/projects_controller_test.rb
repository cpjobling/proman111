require File.dirname(__FILE__) + '/../test_helper'
require 'projects_controller'

class ProjectsControllerTest < ActionController::TestCase

  fixtures :projects

  def setup
    @controller = ProjectController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_get_index
  	get :index
  	assert_response :success
  end
  
end
