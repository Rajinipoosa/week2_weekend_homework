require_relative('songs.rb')
class Songs

  def initialize(songs)
    @songs = songs
  end

  #checking for the song name
  def check_song_name(check_song)
   song_found = @songs.find do |song| song.song_title == check_song end
    return song_found.song_title
  end

#checking for artists for given songs    
def check_song_artists(check_song)
  song_artists_found = @songs.find do |song| song.song_title == check_song end
    return song_artists_found.song_artist
  end
end