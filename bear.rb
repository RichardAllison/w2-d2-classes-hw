class Bear

  attr_reader :name
  attr_accessor :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def eat(river)
    @stomach << river.remove_fish()
  end

end
