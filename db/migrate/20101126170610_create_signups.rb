class CreateSignups < ActiveRecord::Migration
  def self.up
    create_table :signups do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :company
      t.string :subdomain
      t.string :plan
      t.timestamps
    end
  end

  def self.down
    drop_table :signups
  end
end
