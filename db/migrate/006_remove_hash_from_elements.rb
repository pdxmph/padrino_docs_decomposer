class RemoveHashFromElements < ActiveRecord::Migration
  def self.up
    change_table :elements do |t|
      t.remove :hash
    end
  end

  def self.down
    change_table :elements do |t|
      t.string :hash
    end
  end
end
