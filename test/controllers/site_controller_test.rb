require 'test_helper'

class SiteControllerTest < ActionDispatch::IntegrationTest
  def test_routes
    assert_routing(
      { :path => "/site/index", :method => :get },
      { :controller => "site", :action => "index" }
    )
  end

  test "should get index" do
    get "/"
    assert_response :success
  end

end
