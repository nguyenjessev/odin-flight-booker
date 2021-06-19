class AddStartTimeToFlights < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :start_time, :time
  end
end
