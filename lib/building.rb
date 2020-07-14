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

end
