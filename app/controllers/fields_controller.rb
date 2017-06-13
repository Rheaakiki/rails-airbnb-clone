class FieldsController < ApplicationController
  def index
  @result = []
   @fields = Field.all
   date = params[:search_value]
   booking_search =  Date.strptime(date, '%m/%d/%Y')

    @fields.each do |field|
     field.bookings.each do |booking|
     if booking.date != booking_search
      @result << field
     end
     end
    end
  end

  def show
    @field = Field.find(params[:id])
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

private
  def field_params
    params.require(:field).permit(:title, :price, :location, :size, :availability, :floor_type, :description)
  end
end
