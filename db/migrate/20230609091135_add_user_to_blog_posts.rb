class AddUserToBlogPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :blog_posts, :user, null: false, foreign_key: true
  end
end
