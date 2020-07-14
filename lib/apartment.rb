class Apartment

  attr_reader :number,
              :monthly_rent,
              :bathrooms,
              :bedrooms,
              :renter
  def initialize(args)
    @number = args[:number]
    @monthly_rent = args[:monthly_rent]
    @bathrooms = args[:bathrooms]
    @bedrooms = args[:bedrooms]
    @renter = nil
  end

  def add_renter(renter)
    @renter = renter
  end
end
