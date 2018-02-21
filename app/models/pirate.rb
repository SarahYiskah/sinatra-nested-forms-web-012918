class Pirate
  ALL =[]
  attr_reader :name, :weight, :height
  def initialize(arguments)
    # binding.pry
    @name = arguments[:name]
    @weight = arguments[:weight]
    @height = arguments[:height]
    ALL << self
  end

  def self.all
    ALL
  end
end
