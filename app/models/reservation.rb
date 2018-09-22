class Reservation < ApplicationRecord
  has_many :admins
  belongs_to :customer
end
