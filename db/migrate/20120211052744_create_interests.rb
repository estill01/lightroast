class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.integer :user_id
      t.string :topic
      t.string :category
      t.timestamps
    end
  end
end
