class Medication

  attr_accessor :name, :url, :uses, :sideeffects, :precautions, :interations, :overdose 

@@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end
end
