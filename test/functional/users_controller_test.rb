require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  
  test "should get new user" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, :user => { :email => "lala@lulu.com", :password => "asecret", :password_confirmation => "asecret"}
    end

    assert_redirected_to account_path
  end

  test "account should show current user" do
    login
    get :show
    assert_response :success
  end

  test "edit should get edit for current user" do
    login
    get :edit
    assert_response :success
  end

  test "should update user" do
    login
    put :update, :id => users(:one).to_param, :user => { :email => "new@example.com" }
    assert_redirected_to account_path
  end

end
