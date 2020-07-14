class Building

  attr_reader :units
  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    result = []
    @units.each do |apartment|
      result << apartment.renter.name unless apartment.renter.nil?
    end
    result
  end

  def average_rent
    rent_total = @units.sum do |apartment|
      apartment.monthly_rent
    end
    renter_count = @units.count
    rent_total.to_f / renter_count
  end

  def rented_units
    result = []
    @units.each do |apartment|
      result << apartment if !apartment.renter.nil?
    end
    result
  end

  def renter_with_highest_rent
    rented_units.max_by do |apartment|
      apartment.monthly_rent
    end.renter
  end

  # def units_by_number_of_bedrooms
  #   result = Hash.new { |hash, key| hash[key] = [] }
  #   @units.each do |apartment|
  #     result[apartment.bedrooms] << apartment.number
  #   end
  #   result
  # end

  def units_by_number_of_bedrooms
    result = {}
    @units.each do |apartment|
      if result[apartment.bedrooms]
        result[apartment.bedrooms] << apartment.number
      else
        result[apartment.bedrooms] = [apartment.number]
      end
    end
    result
  end

  def annual_breakdown
    result = {}
    rented_units.each do |apartment|
      annual_rent = apartment.monthly_rent * 12
      result[apartment.renter.name] = annual_rent
    end
    result
  end

  def rooms_by_renter
    result = {}
    rented_units.each do |apartment|
      result[apartment.renter] = {bathrooms: apartment.bathrooms, bedrooms: apartment.bedrooms}
    end
    result
  end
end
