class AddFlaggedToElements < ActiveRecord::Migration
  def self.up
    change_table :elements do |t|
      t.boolean :flagged
    end
  end

  def self.down
    change_table :elements do |t|
      t.remove :flagged
    end
  end
end
