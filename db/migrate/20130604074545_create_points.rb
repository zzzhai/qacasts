class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
