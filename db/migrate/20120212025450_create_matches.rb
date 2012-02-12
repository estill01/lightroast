class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :meeting_request_id
      t.integer :joiner_id
      t.timestamps
    end
  end
end
