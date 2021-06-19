class AddStartDateToFlights < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :start_date, :date
  end
end
