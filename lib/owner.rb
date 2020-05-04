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
  
  def buy_cat(pet_name)
    new_cat = Cat.new(pet_name, owner = self)
    #new_cat.owner = self
    @cats << new_cat
  end
  
  def buy_dog(pet_name)
    new_dog = Dog.new(pet_name, owner = self)
    #new_dog.owner = self
    @dogs << new_dog
  end
  
  def walk_dogs
    @dogs.each{|dog| dog.mood = 'happy'}
  end
  
  def feed_cats
    @cats.each{|cat| cat.mood = 'happy'}
  end
  
  def list_pets
    @cats.each {|cat| cat.name}
    @dogs.each {|dog| dog.name}
  end
  
  def sell_pets
    @cats.each {|cat| cat.mood = 'nervous'}
    @cats = []
    @dogs.each {|dog| dog.mood = 'nervous'}
    @dogs = []
  end
  
  
end