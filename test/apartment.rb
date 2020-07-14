require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
reqiore './lib/apartment'

class ApartmentTest < Minitest::Test

  def test_it_exists
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_instance_of Apartment, unit1
  end



end
