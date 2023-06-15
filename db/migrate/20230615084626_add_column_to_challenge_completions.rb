class AddColumnToChallengeCompletions < ActiveRecord::Migration[7.0]
  def change
    add_column :challenge_completions, :start_time, :datetime
  end
end
