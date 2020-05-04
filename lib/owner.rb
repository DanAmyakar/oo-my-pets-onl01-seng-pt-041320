require 'pry'

class Owner
  
  attr_reader :name, :species
  @@all = []
  
  def initialize(name)
    @name = name
    @species = 'human'
    @@all.push(self)
    @cats = []
    @dogs = []
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
  
  def dogs
    @dogs
  end
  
  def buy_cat(pet_name, owner = self)
    new_cat = Cat.new(pet_name)
    #new_cat.owner = self
    @cats << new_cat
  end
  
  def buy_dog(pet_name, owner = self)
    new_dog = Dog.new(pet_name)
    #new_dog.owner = self
    @dogs << new_dog
  end
  
  def walk_dogs
    #makes all dogs mood happy
    @dogs.each{|mood| mood = happy}
  end
  
  def feed_cats
    # makes all cats mood happy
    @cats.each{|mood| mood = happy}
  end
  
  def sell_pets
    binding.pry
    # sells all pets
  end
  
  
end