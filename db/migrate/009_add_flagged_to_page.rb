class AddFlaggedToPage < ActiveRecord::Migration
  def self.up
    change_table :pages do |t|
      t.boolean :flagged
    end
  end

  def self.down
    change_table :pages do |t|
      t.remove :flagged
    end
  end
end
