class Weapon

attr_accessor :id, :strength_req, :dex_req, :intelligence_req, :faith_req, :name, :weapon_type

@@all = []

def initialize(name, weapon_type, strength_req, dex_req, intelligence_req, faith_req)
    @name = name
    @weapon_type = weapon_type
    @strength_req = strength_req
    @dex_req = dex_req
    @intelligence_req = intelligence_req
    @faith_req = faith_req
    @@all << self
end

def self.all
    @@all
end

def self.all=(all)
    @@all = all
end

end