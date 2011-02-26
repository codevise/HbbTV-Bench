require 'test_helper'

class TestCaseTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert TestCase.new.valid?
  end
end
