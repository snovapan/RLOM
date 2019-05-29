require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def test_routes
    # test url prefix
    assert_equal users_path, '/users'
    assert_equal user_path(id: "user_id"), '/user/user_id'
    assert_equal new_user_path, '/user/new'

    # test routing
    assert_routing(
      { :path => "/users", :method => :get },
      { :controller => "users", :action => "index" }
    )
    assert_routing(
      { :path => "/user/new", :method => :get },
      { :controller => "users", :action => "new" }
    )
    assert_routing(
      { :path => "/user/new", :method => :post },
      { :controller => "users", :action => "create" }
    )
    assert_routing(
      { :path => "/user/id", :method => :get },
      { :controller => "users", :action => "show", :id => "id"}
    )
    assert_routing(
      { :path => "/user/id", :method => :put },
      { :controller => "users", :action => "update", :id => "id" }
    )
    assert_routing(
      { :path => "/user/id", :method => :delete },
      { :controller => "users", :action => "destroy", :id => "id" }
    )
    assert_routing(
      { :path => "/user/id/edit", :method => :get },
      { :controller => "users", :action => "edit", :id => "id" }
    )
  end

  test "should create user" do
    get new_user_path
    assert_response :success
    assert_difference('User.count') do
      post new_user_path, params: { user: { name: "Vincent Ying", password: "good_password", phone: "18516043499" } }
      assert_nil flash[:error]
    end
  end

  test "should get error message" do
    assert_no_difference('User.count') do
      post new_user_path, params: { user: { name: "Vincent Ying", password: "bad", phone: "bad" } }
      assert_not_nil flash[:error]
    end
  end
end
