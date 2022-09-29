class AddCommentToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :users, index: true, foreign_key: true
  end
end
