class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.references :from_airport, null: false, foreign_key: true
      t.references :to_airport, null: false, foreign_key: true
      t.datetime :start
      t.integer :duration_in_mins

      t.timestamps
    end
  end
end
