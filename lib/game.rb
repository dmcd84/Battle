class Game
  attr_reader :hp

  def attack(player)
    player.take_damage
  end

end
