class SportsTeam
  attr_reader :team_name
  attr_accessor :coach, :players
  def initialize(team_name, players ,coach)
    @team_name = team_name
    @coach = coach
    @players = players
  end

end
