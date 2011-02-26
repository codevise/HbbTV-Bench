class Browser < ActiveRecord::Base

  attr_accessible :user_agent, :name

  has_many :test_runs

end
