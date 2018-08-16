class Tennis
  SIMPLE_SCORES = {
      3 => 40,
      2 => 30,
      1 => 15
  }

  def initialize
    @scores = {}
    @scores[:server] = 0
  end

  def score
    return "#{SIMPLE_SCORES[@scores[:server]]} love" unless @scores[:server].zero?
    'love all'
  end

  def point_to(player)
    @scores[player] += 1
  end
end