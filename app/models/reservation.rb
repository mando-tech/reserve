class Reservation < ApplicationRecord
    validates :name, presence: true
    validates :phone_number, presence: true, format: { with: /\A\d{10}\z/, message: "must be 10 digits" }
    validates :reservation_date, presence: true
  end
  