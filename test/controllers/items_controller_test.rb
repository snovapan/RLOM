require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  def test_routes
    assert_equal items_path, '/items/index'
    assert_equal item_path(id: "id"), '/item/id'
    assert_routing(
      { :path => "/item/index", :method => :get },
      { :controller => "items", :action => "index" }
    )
    assert_routing(
      { :path => "/item/id", :method => :get },
      { :controller => "items", :action => "show", :id => "id" }
    )
  end
end
