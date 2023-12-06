class AddHeaderToPost < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :header, :string
  end
end
