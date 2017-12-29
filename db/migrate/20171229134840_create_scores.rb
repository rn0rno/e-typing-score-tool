class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.integer :score, comment: 'スコア'
      t.time :input_time, comment: '入力時間'
      t.integer :correct, comment: '入力文字数'
      t.integer :miss, comment: 'ミス入力数'
      t.float :wpm, comment: 'wpm'
      t.float :accuracy, comment: '正答率'

      t.belongs_to :competition, comment: '大会'
      t.belongs_to :level, comment: 'レベル'

      t.timestamps
    end
  end
end

# {"スコア":"447","レベル":"Professor","入力時間":"36秒95","入力文字数":"316","ミス入力数":"14","WPM":"513.08","正確率":"95.56%","苦手キー":"A W K T H"}
