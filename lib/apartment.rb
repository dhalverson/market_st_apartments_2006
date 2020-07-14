class Apartment

  attr_reader :number,
              :monthly_rent,
              :bathrooms,
              :bedrooms
  def initialize(args)
    @number = args[:number]
    @monthly_rent = args[:monthly_rent]
    @bathrooms = args[:bathrooms]
    @bedrooms = args[:bedrooms]
  end

end
