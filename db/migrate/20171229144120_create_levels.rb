class CreateLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :levels do |t|
      t.string :name, comment: 'レベル名'
      t.integer :min_score, comment: 'レベルの最低wpm'
      t.integer :max_score, comment: 'レベルの最高wpm'

      t.timestamps
    end
  end
end
