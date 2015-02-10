class RemoveVersionFromPages < ActiveRecord::Migration
  def self.up
    change_table :pages do |t|
      t.remove :version
    end
  end

  def self.down
    change_table :pages do |t|
      t.integer :version
    end
  end
end
