class CreateThemes < ActiveRecord::Migration[5.1]
  def change
    create_table :themes do |t|
      t.string :name, comment: 'テーマ名'
      t.integer :type, comment: '入力タイプ'

      t.timestamps
    end
  end
end
