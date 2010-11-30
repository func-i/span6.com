class AddNotesToSignups < ActiveRecord::Migration
  def self.up
    add_column :signups, :notes, :string
  end

  def self.down
    remove_column :signups, :notes
  end
end
