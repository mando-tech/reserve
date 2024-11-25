class CreateReservations < ActiveRecord::Migration[7.2]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :phone_number
      t.datetime :reservation_date

      t.timestamps
    end
  end
end
