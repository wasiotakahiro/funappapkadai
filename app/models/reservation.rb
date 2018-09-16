class Reservation < ApplicationRecord
  has_many :customers
  has_many :admins
end
