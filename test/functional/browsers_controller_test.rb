require 'test_helper'

class BrowsersControllerTest < ActionController::TestCase
  def test_show
    get :show, :id => Browser.first
    assert_template 'show'
  end
  
  def test_index
    get :index
    assert_template 'index'
  end
end
