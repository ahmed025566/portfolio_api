class ChangePostNameToArticle < ActiveRecord::Migration[7.1]
  def change
    rename_table :posts, :articles
  end
end
