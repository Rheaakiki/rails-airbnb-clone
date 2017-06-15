class BookingsController < ApplicationController




def create
  d =  Date.strptime(params[:date], '%Y-%m-%d')
  @user = current_user
  @field = Field.find(params[:field_id])
  @booking = Booking.new(date:d, user:current_user, field:@field)
  if @booking.save
   redirect_to booking_confirmation_path(@booking)

  end

end

def index

end

def show
end


def confirmation
  @booking = Booking.find(params[:id])
end

end
