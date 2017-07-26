class AddColumnYearSales < ActiveRecord::Migration[5.1]
  def up
    add_column :sales, :year, :integer
  end

  def down
    drop_column :sales, :year
  end	
end
