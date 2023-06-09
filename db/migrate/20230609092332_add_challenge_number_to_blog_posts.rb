class AddChallengeNumberToBlogPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :challenge_number, :integer
  end
end
