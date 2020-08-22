class MainMenu

    def call 
        input = ""
        while input != "exit"
            Weapon.all = []
            display_welcome_message
            input = gets.strip.capitalize
            check_exit?(input)
            GetWeapons.new(input).find_weapon
            list_all_weapons
            invalid_weapon?
            select_weapon(input)
        end
    end

    def display_welcome_message
            puts ""
            puts "Welcome to Dark Souls! Prepare to die..."
            puts "You'll need a weapon if you hope to survive: "
            puts "...Bow, Shield, Axe, Spear, Greatsword, Staff... and many more long forgotten..."
            puts "Escape the nightmare at any time by typing 'exit'"
            puts "@xxxx[{::::::::::::::::::::::::::::::::::>"
            puts ""
    end

    def select_weapon(input)
        if Weapon.all.length > 0
            puts "Choose a number above to see more information about its stat requirements." 
            input = gets.chomp
                if check_exit?(input) || input.to_i > 0 && input.to_i <= Weapon.all.length
                    weapon_index = Weapon.all[input.to_i - 1]
                else
                    puts ""
                    puts "You failed to select a weapon. Try again."
                    puts ""
                    list_all_weapons
                    select_weapon(input)
                end
                if Weapon.all.include? weapon_index
                    selected_weapon = weapon_index
                    puts ""
                    puts "Will this be enough to survive? #{selected_weapon.name}"
                    puts "Your raw Strength will decimate their brittle bones. Strength required: #{selected_weapon.strength_req}"
                    sleep 1.2
                    puts "Dexterity often outmaneuvers brute force. Dexterity required: #{selected_weapon.dex_req}"
                    sleep 1.2
                    puts "What those monstrosities lack is Intelligence. Intelligence required: #{selected_weapon.intelligence_req}"
                    sleep 1.2
                    puts "Faith in a higher power will protect you. Faith required: #{selected_weapon.faith_req}"
                    sleep 1.2
                    puts ""
                    puts "Press 1 to look at another #{selected_weapon.weapon_type} or 2 to select a new Weapon." 
                    new_weapon?(input)
                end                               
        end
    end

    def list_all_weapons
        Weapon.all.each.with_index(1) {|element, index| puts "#{index} - #{element.name}"}
        puts ""
    end
    
    def check_exit?(input)
        if input.to_s.downcase == "exit"
            exit
        end
    end

    def invalid_weapon?
        if Weapon.all.length <= 0
            puts "Using that as a weapon will get you killed..."
            puts "Let's try again:"
            puts ""
        end
    end

    def new_weapon?(input)
        input = gets.chomp
        check_exit?(input)
            if input.to_i == 1
                puts ""
                list_all_weapons
                select_weapon(input)
            elsif
                input.to_i == 2
                call
            else
                puts "That isn't a valid option."
                new_weapon?(input)
            end
    end

 
end