require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  # User email field is mandatory
  test "a user without an email should not be valid" do
    u = User.new(:email => nil, :password => "secret", :password_confirmation => "secret")
    assert !u.valid?
    assert u.new_record?
  end
  
  # User must provide a password to create an account
  test "a user without password should not be valid" do
    u = User.new(:email => nil, :password => nil, :password_confirmation => nil)
    assert !u.valid?
  end
  
  # User must confirm the password to create an account
  test "a user without without the password confirmation should not be valid" do
    u = User.new(:email => nil, :password => "secret", :password_confirmation => "")
    assert !u.valid?
  end
  
end
