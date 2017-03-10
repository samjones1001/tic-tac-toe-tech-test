class Square

  attr_reader :taken, :taken_by

  def initialize
    @taken = false
    @taken_by = nil
  end

  def set_to_taken(player)
    @taken = true
    @taken_by = player
  end

end
