class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.string :follow_type
      t.integer :follow_id
      t.references :user

      t.timestamps
    end
    add_index :follows, :user_id
  end
end
