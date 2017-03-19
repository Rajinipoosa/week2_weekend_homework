require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')
require_relative('../guest.rb')

class TestGuests < MiniTest::Test
  def setup
   @guest3 = Guest.new("Rajini",30,50)
   @guest1 = Guest.new("satish",31,100)
   @guest2 = Guest.new("Aditri",5,500)
   guests_all = [@guest1,@guest2,@guest3]
   @guests_list = Guests.new(guests_all)
 end
 def test_check_guest_name
   expected_value = @guests_list.guests_name("Rajini")
   assert_equal("Rajini",expected_value)

 end
 def test_check_guest_age
  expected_value = @guests_list.guests_age("Aditri")
  assert_equal(5,expected_value)
end
end