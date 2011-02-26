require 'test_helper'

class BrowserTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Browser.new.valid?
  end
end
