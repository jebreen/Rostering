class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.integer :staff_id
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
