class CreateArticlesPoints < ActiveRecord::Migration
  def change
    create_table :articles_positions, :id => false do |t|
      t.references :article
      t.references :position
    end

    add_index :articles_positions, [:article_id, :position_id]
    add_index :articles_positions, [:position_id, :article_id]
  end
end
