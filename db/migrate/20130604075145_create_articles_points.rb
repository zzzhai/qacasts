class CreateArticlesPoints < ActiveRecord::Migration
  def change
    create_table :articles_points, :id => false do |t|
      t.references :article
      t.references :point
    end

    add_index :articles_points, [:article_id, :point_id]
    add_index :articles_points, [:point_id, :article_id]
  end
end
