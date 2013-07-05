class ChangeContentToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :url, :string
    remove_column :articles, :content
  end
end
