class Pig
  attr_reader :snout_length, :tastiness

  def initialize(snout_length, tastiness)
    @snout_length = snout_length.to_i
    @tastiness = tastiness.to_i
  end

  def snort
    "Oink" * snout_length
  end

  def get_eaten
    ("Bacon! " * tastiness).strip
  end
end
