class Ship
  attr_accessor :name, :type, :booty

  @@all = []

  def initialize(name = nil, type = nil, booty= nil)
    @name = name
    @type = type
    @booty = booty
    @@all << self
  end

  def self.new_from_hash(hash)
    ship = Ship.new
    hash.each do |key, value|
      ship.send("#{key}=", value)
    end
    ship
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end
