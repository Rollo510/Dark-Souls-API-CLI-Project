class Weapon

attr_accessor :id, :strength_req, :dex_req, :intelligence_req, :faith_req, :name

@@all = []

def initialize(weapon)
    @name = weapon["name"]
    puts @name
    @strength_req = weapon["strength_req"]
    puts "Strength Required: #{@strength_req}"
end







    

end