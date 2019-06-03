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
end
