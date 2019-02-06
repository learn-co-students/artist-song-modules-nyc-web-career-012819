require 'pry'

class Artist

  extend Memorable
  extend Findable
  # binding.pry            #class methods in the Memorable module

  include Paramable
  attr_accessor :name #airtist name ( can read can chagne)
  attr_reader :songs #songs that belong to artist

  @@artists = [] #artists name and songs goes here

  def initialize
    @@artists << self #artists will be stored at @@artists
    @songs = []  #its empty waiting for to be initilized throu attr_reader
  end

  # def self.find_by_name(name)
  #   #calling Artist and defining the find_by_name method in itself
  #   @@artists.detect{|a| a.name == name}
  #   #looking into the where we saved the artist name and add_songs
  #   #that we added in and detect/find a the first variable that name matches
  # end

  def self.all
    @@artists  #Artists.all == @@artists = [] save all the artists date there
  end

  # def self.reset_all
  #   self.all.clear #clear eveything in the @@artists
  # end

  # def self.count
  #   self.all.count #counts everything in the @@artists
  # end

  def add_song(song) #add a song and assign it to the artist ???
    @songs << song #song will be added to the @@songs
    song.artist = self #artist song added in will be saved specifc artist and saved to @@artists
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
    #go throught each song that in the songs
    #if song and the #add_song true => pass.
  end

  # def to_param #instance mathods
  #   name.downcase.gsub(' ', '-')
  #   #downcase the all name artists name
  #   #It finds all instances of the matched string and replaces it with the new argument.
  # end
end
