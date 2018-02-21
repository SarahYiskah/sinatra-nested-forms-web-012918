class Ship
  ALL = []
  attr_accessor :name, :type, :booty
  def initialize(arguments)
    @name = arguments[:name]
    @type = arguments[:type]
    @booty = arguments[:booty]
    ALL << self
  end
  def self.all
    ALL
  end
  def self.clear
    ALL.clear
  end
end
