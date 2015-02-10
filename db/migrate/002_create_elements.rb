class CreateElements < ActiveRecord::Migration
  def self.up
    create_table :elements do |t|
      t.string :hash
      t.integer :kind
      t.integer :page_id
      t.string :filename
      t.text :content
      t.timestamps
    end
  end

  def self.down
    drop_table :elements
  end
end
