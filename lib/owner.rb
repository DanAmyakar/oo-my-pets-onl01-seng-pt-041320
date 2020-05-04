require 'pry'

class Owner
  
  attr_reader :name, :species
  @@all = []
  
  def initialize(name)
    @name = name
    @species = 'human'
    @@all.push(self)
    @cats = []
  end
  
  def say_species
    'I am a ' + @species + '.'
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    @cats
  end
  
  def buy_cat(cat)
    Cat.all.select{|cat| cat == cat}
    cat.owner = self
    @cat << cat
  end
  
  def dogs
    @dogs
  end
  
  def buy_dog(dog)
    dog.owner = self
    @dog << dog
  end
  
end