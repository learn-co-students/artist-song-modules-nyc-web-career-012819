require 'pry'

# require_relative '../lib/concerns/findable'
# require_relative '../lib/concerns/memorable'
# require_relative '../lib/concerns/paramable'

require_relative '../lib/artist.rb'
require_relative '../lib/song.rb'
require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/paramable.rb'

adele = Artist.new
eminem = Artist.new
jayz = Artist.new

jayz.name = "jayz"
eminem.name = "eminem"
adele.name = "adele"
