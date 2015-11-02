require './lib/name'
require './lib/disease'
require './lib/sideeffect'

class String
  def ucfirst
    self[0] = self[0,1].upcase
    self
  end
end

puts Name.generate.ucfirst + '™ ' + Disease.generate + '. ' + SideEffect.generate
