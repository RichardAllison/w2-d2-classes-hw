class River

  attr_reader :name, :fish_array

  def initialize(name)
    @name = name
    @fish_array = []
  end

  def add_fish(fish)
    @fish_array << fish
  end

end
