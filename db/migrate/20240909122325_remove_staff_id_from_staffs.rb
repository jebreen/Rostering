class RemoveStaffIdFromStaffs < ActiveRecord::Migration[7.0]
  def change
    remove_column :staffs, :staff_id
  end
end
