NAMES = {"fn" => ["James", "John", "John"], "ln" => ["Smith", "Johnson", "Brown"]}

class RandomNameGenerator
  def self.generate
    new.to_s
  end

  def initialize
    @fn = NAMES['fn'].sample
    @ls = NAMES['ln'].sample
  end

  def to_s
    @fn + " " + @ls
  end
end
