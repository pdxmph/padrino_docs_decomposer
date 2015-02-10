class AddChecksumToElements < ActiveRecord::Migration
  def self.up
    change_table :elements do |t|
      t.string :checksum
    end
  end

  def self.down
    change_table :elements do |t|
      t.remove :checksum
    end
  end
end
