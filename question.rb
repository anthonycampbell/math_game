class Question
  attr_reader :n1, :n2
  def initialize
    @n1 = rand(1..20)
    @n2 = rand(1..20)
  end

  def answer
    n1 + n2
  end
end