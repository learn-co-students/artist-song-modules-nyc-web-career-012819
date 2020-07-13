require 'pry'
require_relative './concerns/findable.rb'
require_relative './concerns/paramable.rb'
require_relative './concerns/memorable.rb'

class Song
  attr_accessor :name, :artist

  extend Memorable::ClassMethods
  extend Findable

  include Paramable
  include Memorable::InstanceMethods

  @@songs = []

  def self.all
    @@songs
  end

end
