class FieldsController < ApplicationController
  def index
    raise
   @result_final = []
   @fields = Field.all
   date = params[:search_value]
   @booking_search =  Date.strptime(date, '%m/%d/%Y')

   @bookings = Booking.select { |booking| booking.date == @booking_search }


   if @bookings.empty?
    @result = Field.all
  else


    ids = @bookings.map do |r|
      r.field.id
    end

    @result_final = Field.where.not(id: ids)

  end


  # @result.select(:field_id,:date).uniq


  def show
    @field = Field.find(params[:id])
    date = params[:date]
    @booking_search =  Date.strptime(date, '%m/%d/%Y')
  end

  def new
    @field = Field.new
  end


  def create
    @field = Field.new(field_params)
    # f = Field.create(all your stuff)
    # f.owner = current_user
    # f.save
  end

  def update
  end


  def destroy
  end

end

  private

  def field_params
    params.require(:field).permit(:title, :price, :location, :size, :availability, :floor_type, :description)
  end
end
