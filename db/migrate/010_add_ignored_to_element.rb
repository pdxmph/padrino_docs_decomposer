class AddIgnoredToElement < ActiveRecord::Migration
  def self.up
    change_table :elements do |t|
      t.boolean :ignored
    end
  end

  def self.down
    change_table :elements do |t|
      t.remove :ignored
    end
  end
end
