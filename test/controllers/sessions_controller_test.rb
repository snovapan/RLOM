require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  def test_routes
    assert_equal login_path, '/session/login'
    assert_routing(
      { :path => "/session/login", :method => :get },
      { :controller => "sessions", :action => "new" }
    )
    assert_routing(
      { :path => "/session/login", :method => :post },
      { :controller => "sessions", :action => "create" }
    )
  end

  test "should login" do
    get login_path
    assert_response :success
    user = users(:one)
    post login_path,
      params: { user: { phone: user.phone, password: user.password } }
    assert_redirected_to user_path(user)
  end

  test "should fail login" do
    get login_path
    assert_response :success
    post login_path,
      params: { user: { phone: "bad", password: "bad" } }
    assert_response :success
  end
end
