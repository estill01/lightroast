class CreateMeetingRequests < ActiveRecord::Migration
  def change
    create_table :meeting_requests do |t|
      t.integer :user_id
      t.integer :match_count, :default => 0
      t.boolean :closed, :default => false
      t.integer :matches_at_close, :default => 0 
      t.boolean :canceled, :default => false
      t.datetime :expires
      t.string :type, :default => "solo"
      t.integer :matches_count
      t.timestamps
    end
  end
end
