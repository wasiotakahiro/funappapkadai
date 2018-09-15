class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]
  # before_action :require_sign_in!, only: [:new, :edit, :show]
 def index
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
    # @reservation.user_id = current_user.id # login user がblog を投稿
    if @reservation.save
      redirect_to reservations_path, notice: "予約を作成しました！"
      @inform = current_user.email
      ContactMailer.send_mail(@inform).deliver
    else
      render 'new'
    end


 end

  def show
  end

  def edit
  end

  def update
    if @reservation.update(reservation_params)
      redirect_to reservations_path, notice: "ブログを編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @reservation.destroy
    redirect_to reservations_path, notice:"ブログを削除しました！"
  end

  def confirm
    @reservation = Reservation.new(reservation_params)
    # @reservation.user_id=current_user.id
    render :new if @reservation.invalid?
  end


  private
    def reservation_params
      params.require(:reservation).permit(:name, :content,)
    end

    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    def set_user_infomation
      @reservation = Reservation.find(params[:id])
    end

    # def require_sign_in!
    #   unless logged_in?
    #     redirect_to sessions_new_path, noctice:"ログインしてください"
    #   end
  end
