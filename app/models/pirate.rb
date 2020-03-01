class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(name = nil, weight = nil, height = nil)
    @name = name
    @weight = weight
    @height = height
    @@all << self
  end

  def self.new_from_hash(hash)
    pirate = Pirate.new
    hash.each do |key, value|
      pirate.send("#{key}=", value)
    end
    pirate
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end
