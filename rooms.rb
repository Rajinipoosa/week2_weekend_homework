class Room
  attr_accessor :room_number,:capacity,:guests
  def initialize(room_number,capacity)
    @room_number = room_number
    @capacity = capacity
    @guests = []
     @song =[]
     @entry_fee = 10
     @total_money = 0
  end
  def add_songs_to_room(songs_list)
    
     @song << songs_list
     return @song.length
   
  end
  
  def check_in(guests1)
     @guests << guests1
     return @guests.length
  end


  def extra_guests_check_in(guests4)
   
    for guest in @guests
      
      if @capacity > @guests.length
        
        return check_in(guests4)
      end
    end         
  end

  def check_out(guest)
    @guests.delete(guest)
    return 
  end

  def check_entry_fee(guest_fee)
    guest_fee.money -= @entry_fee
    return guest_fee.money
  end

 end
