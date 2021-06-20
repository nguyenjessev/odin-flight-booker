class RemoveStartDateAndStartTimeAndAddStartToFlights < ActiveRecord::Migration[6.1]
  def change
    remove_column :flights, :start_date, :date
    remove_column :flights, :start_time, :time
    add_column :flights, :start, :datetime
  end
end
