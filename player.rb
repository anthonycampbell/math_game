class Player
  attr_reader :name, :max_lives, :lives
  def initialize(name)
    @name = name
    @max_lives = 3
    @lives = 3
  end

  def lose_life
    if !is_dead
      self.lives -= 1
    end
  end

  def is_dead
    self.lives <= 0
  end

  private 
  attr_writer :lives
end