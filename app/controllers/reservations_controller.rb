class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]
  # before_action :require_sign_in!, only: [:index, :new, :edit, :show]
 def index
    redirect_to new_reservation_path unless current_admin
    @reservations = Reservation.all
 end

  def new
    if params[:back]
      @reservation = Reservation.new(reservations_params)
    else
      @reservation = Reservation.new
    end
  end

 def create
    @reservation = Reservation.new(reservation_params)
    # @reservation.user_id = current_customer.id # login user がblog を投稿
    if @reservation.save
      redirect_to reservation_path(@reservation), notice: "予約を作成しました！"
      # @inform = current_customer.email
      # ContactMailer.send_mail(@inform).deliver
    else
      render 'new'
    end
    if params[:check]== true
      @reservation.save(reservation_params)
      redirect_to reservations_path
    end
 end

  def show
      @reservations = Reservation.all
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    if @reservation.update(reservation_params)
      redirect_to reservations_path, notice: "編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @reservation.destroy
    redirect_to reservations_path, notice:"削除しました！"
  end

  def confirm
    @reservation = current_customer.reservations.build(reservation_params)

    if @reservation.save
      redirect_to reservation_path(@reservation), notice: "予約を作成しました！"
    else
      render :new
    end
  end

  def mail
    @reservation = Reservation.find(params[:reservation_id].to_i)
    ContactMailer.contact_mail(@reservation).deliver
    redirect_to reservations_path(params[:reservation_id]), notice: "メールを送信しました！"
  end

  private
    def reservation_params
      params.require(:reservation).permit(
        :name,
        :content,
        :email,
        :check
        # :customer_id
        )
    end

    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # def set_user_infomation
    #   @reservation = Reservation.find(params[:id])
    # end

    # def require_sign_in!
    #   unless logged_in?
    #     redirect_to new_customer_session_path, noctice:"ログインしてください"
    #   end
    # end
  end
