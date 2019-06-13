require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  def test_routes
    assert_equal items_path, '/item/index'
    assert_equal item_path(id: "id"), '/item/id'
    assert_routing(
      { :path => "/item/index", :method => :get },
      { :controller => "items", :action => "index" }
    )
    assert_routing(
      { :path => "/item/id", :method => :get },
      { :controller => "items", :action => "show", :id => "id" }
    )
    assert_routing(
      { :path => "/item/new", :method => :get },
      { :controller => "items", :action => "new" }
    )
  end

  test "should get index" do
    get items_path
    assert_response :success
  end
end
