class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.integer :company_id
      t.float :sales_on_date
      t.integer :year
      t.float :avg_week_sales
      t.date :sales_date
      t.integer :week_number
      t.timestamps
    end
  end
end
