require 'Minitest/Autorun'
require 'Minitest/Pride'
require 'pry'
require './lib/boat'
require './lib/renter'

class BoatTest < Minitest::Test

   def setup
     @kayak = Boat.new(:kayak, 20)
   end

  def test_it_exists
    assert_instance_of Boat, @kayak
  end

  def test_it_is_correct_type
    assert_equal :kayak, @kayak.type
  end

  def test_it_is_correct_price_per_hour
    assert_equal 20, @kayak.price_per_hour
  end

  def test_it_starts_with_0_hours_rented
    assert_equal 0, @kayak.hours_rented
  end

  def test_it_can_add_hour_function
    @kayak.add_hour
    assert_equal 1, @kayak.hours_rented
    @kayak.add_hour
    assert_equal 2, @kayak.hours_rented
  end
end
