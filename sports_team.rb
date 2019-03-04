class SportsTeam
  attr_reader :team_name, :points
  attr_accessor :coach, :players
  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @coach = coach
    @players = players
    @points = points
  end

  def win_or_lose_points(result)
    @points += 3 if result == "win"
    # @points +
  end
end
