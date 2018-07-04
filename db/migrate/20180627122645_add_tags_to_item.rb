class AddTagsToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :tags, :string, array: true, default: []
  end
end
