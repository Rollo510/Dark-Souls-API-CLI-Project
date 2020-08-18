require_relative './get_weapons.rb'


class MainMenu
    

    def call 
        input = ""
        while input != "exit"
            puts "Welcome to Dark Souls! Let's find you a build based off of your stat requirements."
            puts "First, what type of weapon are you looking for?"
            input = gets.strip
            puts GetWeapons.new(input).find_weapon
        end
    end

    # def weapons
    #     puts "Please enter a weapon type"
    #     input = gets.strip
    #     GetWeapons.find_weapon(input)
    #     clean_up_array
    #     check_exit?(input)
    #     API.get_events(input)
    # end

    # def list_all_weapon
    #     Weapon.all.each.with_index(1) {|e, index|} puts "#{index} - #{e.name}"}
    # end

    # def get_info_on_events
    #     input = gets.strip.to_i
    #     @event = Event.all[input - 1]
    #     puts "#{@event.url}"
    # end

    # def check_exit?(input)
    #     if input.downcase == "exit"
    #         exit
    #     end
    # end

    # def valid?
    #     #checks to see if user put in a valid response.        
    # end




    






end

MainMenu.new.call