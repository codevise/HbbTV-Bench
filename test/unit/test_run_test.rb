require 'test_helper'

class TestRunTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert TestRun.new.valid?
  end
end
