class AddDescriptionToBlogPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :descripton, :string
  end
end
