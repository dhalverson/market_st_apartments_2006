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
    renter_total = @units.count
    rent_total.to_f / renter_total
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

end
