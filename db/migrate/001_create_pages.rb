class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.float :version
      t.integer :user_id
      t.text :content
      t.string :url
      t.string :filename
      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
