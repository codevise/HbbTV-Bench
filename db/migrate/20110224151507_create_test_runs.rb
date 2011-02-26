class CreateTestRuns < ActiveRecord::Migration
  def self.up
    create_table :test_runs do |t|
      t.integer :test_case_id
      t.integer :browser_id
      t.integer :runs
      t.integer :avg
      t.integer :min
      t.integer :max
      t.timestamps
    end
  end

  def self.down
    drop_table :test_runs
  end
end
