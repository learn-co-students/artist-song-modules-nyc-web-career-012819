require 'pry'

module Findable

  def find_by_name(name)
    all.detect{|a| a.name == name}
    #for be able to acces to the all methods in the module and also connect
    #find_by_name methods with other Artist and Song class. add all in the fornt.
  end

end
