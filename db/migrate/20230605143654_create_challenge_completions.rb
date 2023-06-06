class CreateChallengeCompletions < ActiveRecord::Migration[7.0]
  def change
    create_table :challenge_completions do |t|
      t.references :challenge_participation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
