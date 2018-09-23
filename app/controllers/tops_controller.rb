class TopsController < ApplicationController
  def index
    if current_admin
      redirect_to reservations_path
    elsif current_customer
      redirect_to new_reservation_path
    end
  end
end
