class AddHistoryToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :history, :text
  end
end
