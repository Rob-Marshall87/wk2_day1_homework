require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test
  def test_get_team_name
    sports_team = SportsTeam.new("Edinburgh", ["player1", "player2"], "Joe Smit")
    assert_equal("Edinburgh", sports_team.team_name)
  end

  def test_get_coach
    sports_team = SportsTeam.new("Edinburgh", ["player1", "player2"], "Joe Smit")
    assert_equal("Joe Smit", sports_team.coach)
  end

  def test_get_players
    sports_team = SportsTeam.new("Edinburgh", ["player1", "player2"], "Joe Smit")
    assert_equal(["player1", "player2"], sports_team.players)
  end

  def test_change_coach
    sports_team = SportsTeam.new("Edinburgh", ["player1", "player2"], "Joe Smit")
    sports_team.coach = "Vern Cotter"
    assert_equal("Vern Cotter", sports_team.coach)
  end

  def test_add_new_player
    sports_team = SportsTeam.new("Edinburgh", ["player1", "player2"], "Joe Smit")
    sports_team.players += ["player3"]
    assert_equal(["player1", "player2", "player3"], sports_team.players)
  end
end
