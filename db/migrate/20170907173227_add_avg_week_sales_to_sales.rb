class AddAvgWeekSalesToSales < ActiveRecord::Migration[5.1]
  def change
    add_column :sales, :avg_week_sales, :float
  end
end
