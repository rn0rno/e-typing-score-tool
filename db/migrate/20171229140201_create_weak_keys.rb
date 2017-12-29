class CreateWeakKeys < ActiveRecord::Migration[5.1]
  def change
    create_table :weak_keys do |t|
      t.string :character

      t.belongs_to :score

      t.timestamps
    end
  end
end
