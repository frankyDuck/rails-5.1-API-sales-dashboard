class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.integer :company_id
      t.float :day1
      t.float :day2
      t.float :day3
      t.float :day4
      t.float :day5
      t.float :day6
      t.float :day7

      t.timestamps
    end
  end
end
