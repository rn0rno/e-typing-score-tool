class CreateCompetitions < ActiveRecord::Migration[5.1]
  def change
    create_table :competitions do |t|
      t.string :title, comment: '大会'
      t.timestamp :start_at, comment: '開始日時'
      t.timestamp :end_at, comment: '終了日時'

      t.belongs_to :theme, comment: 'テーマ'

      t.timestamps
    end
  end
end
