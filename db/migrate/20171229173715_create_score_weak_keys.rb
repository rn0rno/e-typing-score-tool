class CreateScoreWeakKeys < ActiveRecord::Migration[5.1]
  def change
    create_table :score_weak_keys do |t|
      t.references :score, index: true, null: false
      t.references :weak_key, index: true, null: false

      t.timestamps
    end
  end
end
