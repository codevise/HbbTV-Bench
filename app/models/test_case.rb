class TestCase < ActiveRecord::Base

  attr_accessible :test_id, :description

  has_many :test_runs

end
