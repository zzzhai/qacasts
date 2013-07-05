class CreateArticleContents < ActiveRecord::Migration
  def change
    create_table :article_contents do |t|
      t.text :content
      t.references :article

      t.timestamps
    end
    add_index :article_contents, :article_id
  end
end
