require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not create" do
    bad_params = { :name => "Hola", :phone => "123", :password => "456"}
    user = User.new(bad_params)
    assert_not user.save
  end

  test "should create user" do
    good_params = { :name => 'Vincent Ying', :phone => "18516043499",
      :password => "some_good_password" }
    user = User.new(good_params)
    assert user.save
  end
end
