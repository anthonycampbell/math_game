
class Game
  def initialize()
    @p1 = Player.new('Player 1')
    @p2 = Player.new('Player 2')
    @current_player = p1
  end

  def start
    while true
      q = Question.new
      puts "#{current_player.name}: What does #{q.n1} plus #{q.n2} equal?"
      answer = gets.chomp.to_i
      if answer == q.answer
        puts "#{current_player.name}: YES! You are correct."
      else
        puts"#{current_player.name}: Seriously? No!"
        current_player.lose_life
      end 

      if current_player.is_dead
        next_turn
        game_over(current_player)
        return 
      else 
        puts "P1: #{p1.lives}/#{p1.max_lives} vs. P2: #{p2.lives}/#{p2.max_lives}"
        puts "----- NEW TURN -----"
      end
      next_turn
    end
  end

  def next_turn
    if current_player.name == 'Player 1'
      self.current_player = p2
    else 
      self.current_player = p1
    end
  end

  def game_over(winner)
    puts "#{winner.name} wins with a score of #{winner.lives}/#{winner.max_lives}"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  private 
  attr_accessor :current_player
  attr_reader :p1, :p2
end