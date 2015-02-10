class AddVersionToPages < ActiveRecord::Migration
  def self.up
    change_table :pages do |t|
      t.string :version
    end
  end

  def self.down
    change_table :pages do |t|
      t.remove :version
    end
  end
end
