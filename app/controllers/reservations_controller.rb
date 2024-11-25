class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :confirm_delete, :destroy]

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservations_path, notice: 'Reservation was successfully created.'
    else
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update
    if @reservation.update(reservation_params)
      redirect_to @reservation, notice: 'Reservation was successfully updated.'
    else
      render :edit
    end
  end

  def confirm_delete
    
  end

  def destroy
    @reservation.destroy
    redirect_to reservations_path, notice: 'Reservation successfully deleted.'
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:name, :phone_number, :reservation_date)
  end
end
