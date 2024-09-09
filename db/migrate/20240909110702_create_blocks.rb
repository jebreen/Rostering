class CreateBlocks < ActiveRecord::Migration[7.0]
  def change
    create_table :blocks do |t|
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
