class AddIgToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :ig, :string
  end
end
