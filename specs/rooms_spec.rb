require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')
require_relative('../songs.rb')
require_relative('../guests.rb')
require_relative('../song.rb')
require_relative('../guest.rb')
class TestRooms < MiniTest::Test
  def setup
    @room1 = Room.new("room1",30)
    @room2 = Room.new("room2",10)
    @song1  = Song.new("Bo Diddley","Bo Diddley")
    @song2  = Song.new("Doop","Doop")
    @song3  = Song.new("Ice Ice Baby","Vanilla Ice")
    song = [@song1,@song2,@song3]
    @songs_all = Songs.new(song)
    @guest3 = Guest.new("Rajini",30,50)
    @guest1 = Guest.new("satish",31,100)
    @guest2 = Guest.new("Aditri",5,500)
    guests_all = [@guest1,@guest2,@guest3]
    @guests_list = Guests.new(guests_all)
  end
  def test_room_number
    assert_equal("room1",@room1.room_number())

  end
  def test_room_capacity
    assert_equal(30, @room1.capacity())

  end

  def test_add_songs_to_room

   @room1.add_songs_to_room(@song1)
   result = @room1.add_songs_to_room(@song2)
   assert_equal(2,result)
  end

 def test_check_in
  @room1.check_in(@guest3)
  @room1.check_in(@guest2)
  result = @room1.check_in(@guest1)
  assert_equal(3,result)

 end
def test_extra_guests_check_in
  @room1.check_in(@guest3)
  @room1.check_in(@guest1)
  @guest4 = Guest.new("elsa",5,500)
  result = @room1.extra_guests_check_in(@guest4)
  assert_equal(3,result)
end


def test_check_out
  @room1.check_in(@guest1)
  @room1.check_out(@guest1)
  assert_equal([], @room1.guests)
end
def test_entry_fee
  @room1.check_in(@guest3)
  result =@room1.check_entry_fee(@guest3)
  assert_equal(40,result)
end
end
