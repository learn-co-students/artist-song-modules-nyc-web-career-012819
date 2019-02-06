# require 'pry'

class Song

  extend Memorable
  extend Findable
  # binding.pry#class methods in the Memorable module
  include Paramable
  attr_accessor :name #name of the song (can read and write)
  attr_reader :artist # only be able to read the Artist

  @@songs = [] #all the songs and song name goes here

  def initialize
    @@songs << self #intilized songs will be added to @@songs
  end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end

  # def self.reset_all #can be an instance methos in the module
  #   self.all.clear
  # end

  # def self.count #can me instance methods in module
  #   self.all.count
  # end

  def artist=(artist) #class methos
    @artist = artist
  end

  # def to_param #can be instance mothods
  #   name.downcase.gsub(' ', '-')
  # end
end
