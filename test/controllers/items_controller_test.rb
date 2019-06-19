require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  def test_routes
    assert_equal items_path, '/items'
    assert_equal item_path(id: "id"), '/items/id'
    assert_routing(
      { :path => "/items", :method => :get },
      { :controller => "items", :action => "index" }
    )
    assert_routing(
      { :path => "/items/id", :method => :get },
      { :controller => "items", :action => "show", :id => "id" }
    )
    assert_routing(
      { :path => "/items/new", :method => :get },
      { :controller => "items", :action => "new" }
    )
  end

  test "should get index" do
    get items_path
    assert_response :success
  end
end
