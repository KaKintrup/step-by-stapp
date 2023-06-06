class CreateChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :description
      t.string :category
      t.integer :weekly_goal
      t.date :start_date
      t.date :end_date
      t.boolean :public
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
