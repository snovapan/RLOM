class FixCommentItem < ActiveRecord::Migration[5.2]
  def change
    remove_reference :comments, :item
    add_reference :comments, :product, foreign_key: true
  end
end
