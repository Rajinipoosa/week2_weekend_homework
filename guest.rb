require_relative('guests.rb')
class Guests
  
  def initialize(input_guest)
    @all_guests = input_guest
  end
 #checking the guests name and return guests name if found
  def guests_name(guest_name)
    for all_guest in @all_guests
      
      if all_guest.name == guest_name
        # puts guest.name
       return all_guest.name
      end
    end
    # guest_name_found = @guests.find do |guest| guest.name == guest_name
    # end
    # return guest_name_found.name
  end

  #checking the guests name and returning guests age if found
  def guests_age(guest_name)
    guest_age_found = @all_guests.find do |guest| guest.name == guest_name
    end
    return guest_age_found.age

  end
end