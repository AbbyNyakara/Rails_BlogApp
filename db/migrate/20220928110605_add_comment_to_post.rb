class AddCommentToPost < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :posts, foreign_key: true, index:true
  end
end
