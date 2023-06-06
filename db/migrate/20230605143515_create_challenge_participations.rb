class CreateChallengeParticipations < ActiveRecord::Migration[7.0]
  def change
    create_table :challenge_participations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :challenge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
