require 'net/http'
require 'open-uri'
require 'json'
require 'pry'
require 'httparty'
require_relative './weapon.rb'


class GetWeapons



    attr_accessor :url, :weapon_info, :name

    URL = "https://mugenmonkey.com/api/v0/ds3_weapons?per_page=100"

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def get_weapons
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
        # @weapon_info = JSON.parse(response.body)
    end

    def find_weapon
        weapon_info = JSON.parse(self.get_weapons)
        weapon_array = weapon_info["results"]
        filter_results = weapon_array.select {|result| weapon_info[result["key"]][result["id"]]["weapon_type"] == @name }
        mapped_results = filter_results.map {|result| weapon_info[result["key"]][result["id"]]}
        mapped_results.map {|weapon| Weapon.new(weapon)}
    end
end
    
# dagger = GetWeapons.new("Dagger")
# puts dagger.find_weapon


#  weapon_array.collect { |id_hash| id_hash.detect {|value| value["weapon_type"] == "Dagger"}}