require 'Minitest/Autorun'
require 'Minitest/Pride'
require 'pry'
require './lib/boat'
require './lib/renter'

class RenterTest < Minitest::Test

  def setup
    @renter = Renter.new("Patrick Star", "4242424242424242")
  end

  def test_renter_exists
    assert_instance_of Renter, @renter
  end

  def test_renter_name
    assert_equal "Patrick Star",  @renter.name
  end

  def test_renter_credit_card_number
    assert_equal "4242424242424242", @renter.credit_card_number
  end

end
