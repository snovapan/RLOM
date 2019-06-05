require 'test_helper'

class SiteControllerTest < ActionDispatch::IntegrationTest
  def test_routes
    assert_routing(
      { :path => "/", :method => :get },
      { :controller => "site", :action => "index" }
    )
  end

end
