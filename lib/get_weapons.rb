class GetWeapons

    attr_accessor :url, :weapon_info, :name

    URL = "https://mugenmonkey.com/api/v0/ds3_weapons?per_page=250"

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def get_weapons
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def find_weapon
        weapon_info = JSON.parse(self.get_weapons)
        weapon_array = weapon_info["results"]
        filter_results = weapon_array.select {|result| weapon_info[result["key"]][result["id"]]["weapon_type"] == @name }
        mapped_results = filter_results.map {|result| result["id"]}
        mapped_results.each do |num|
        weapon_hash = weapon_info["ds3_weapons"][num]
        name = weapon_hash["name"]
        weapon_type = weapon_hash["weapon_type"]
        strength_req = weapon_hash["strength_req"]
        dex_req = weapon_hash["dex_req"]
        intelligence_req = weapon_hash["intelligence_req"]
        faith_req = weapon_hash["faith_req"]
        Weapon.new(name, weapon_type, strength_req, dex_req, intelligence_req, faith_req)
        end
    end
end