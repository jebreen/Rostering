class CreateShifts < ActiveRecord::Migration[7.0]
  def change
    create_table :shifts do |t|
      t.references :block, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
