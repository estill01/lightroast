class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username 
      t.string :name
      t.string :email,            :default => nil # if you use this field as a username, you might want to make it :null => false.
      t.string :crypted_password, :default => nil
      t.string :salt,             :default => nil
      t.integer :phone_number
      t.integer :points_count
      t.integer :meeting_requests_count
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
