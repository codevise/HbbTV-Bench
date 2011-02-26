class TestRun < ActiveRecord::Base

  attr_accessible :test_case_id, :test_description, :runs, :avg, :min, :max

  belongs_to :browser
  belongs_to :test_case

end
