class Reservation < ApplicationRecord
  belongs_to :admins, optional: true
  belongs_to :customer, optional: true
end
