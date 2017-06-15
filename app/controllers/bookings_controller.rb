class BookingsController < ApplicationController


def create
  d =  Date.strptime(params[:date], '%Y-%m-%d')
  @user = current_user
  @field = Field.find(params[:field_id])
  @booking = Booking.new(date:d, user:current_user, field:@field)
  if @booking.save

    redirect_to root_path
  end

end


end
