class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.text :text
      t.references :category, null: false, foreign_key: true
      t.text :hashes

      t.timestamps
    end
  end
end
