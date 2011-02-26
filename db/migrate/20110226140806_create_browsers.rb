class CreateBrowsers < ActiveRecord::Migration
  def self.up
    create_table :browsers do |t|
      t.string :user_agent
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :browsers
  end
end
