require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')
require_relative('../songs.rb')
class TestSongs < MiniTest::Test
  def setup
    @song1  = Song.new("Bo Diddley","Bo Diddley")
    @song2  = Song.new("Doop","Doop")
    song = [@song1,@song2]
    @songs_all = Songs.new(song)
  end

  def test_song_title
    expected_value = @songs_all.check_song_name("Doop")
    assert_equal("Doop",expected_value)
  end
  
  def test_song_artists
   expected_value = @songs_all.check_song_artists("Doop")
   assert_equal("Doop",expected_value)
  end
end