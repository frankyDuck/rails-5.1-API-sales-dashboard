class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :start_week
      t.integer :end_week
      t.string :city
      t.string :state
      t.string :country_code
      t.string :time_zone

      t.timestamps
    end
  end
end
