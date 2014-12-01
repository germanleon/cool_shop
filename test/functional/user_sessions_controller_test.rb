require 'test_helper'

class UserSessionsControllerTest < ActionController::TestCase
  
  test "login" do
    get :new
    assert_response :success
  end

  test "logout" do
    delete :destroy
    assert_redirected_to login_path
  end  
  
end
