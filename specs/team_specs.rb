require('minitest/autorun')
require('minitest/rg')
require_relative('../team')

class TestTeams < MiniTest::Test

  def test_name
    team_awesome = Teams.new("awesome", ["Player 1"], "MacGregor", 0)
    assert_equal("awesome",team_awesome.name)
  end

  def test_players
    team_awesome = Teams.new("awesome", ["Player 1", "Player 2"], "MacDonald", 0)
    assert_equal(["Player 1", "Player 2"], team_awesome.players)
  end

  def test_coach
    team_awesome = Teams.new("awesome", [], "MacNeal", 0)
    assert_equal("MacNeal", team_awesome.coach)
  end

  def test_set_coach
    team_awesome = Teams.new("awesome", [], "Lennon", 0)
    team_awesome.coach = "MacCoy"
    assert_equal("MacCoy", team_awesome.coach)
  end

  def test_add_player
    team_awesome = Teams.new("awesome", [], "MacNeal", 0)
    team_awesome.add_player("Paul")
    assert_equal(["Paul"],team_awesome.players)
  end

  def test_find_player
    team_awesome = Teams.new("awesome", ["Paul", "Steve"], "MacDonald", 0)
    assert_equal(true, team_awesome.find_player("Steve"))
  end

  def test_find_player_player_not_found
    team_awesome = Teams.new("awesome", ["Paul", "Steve"], "MacDonald", 0)
    assert_equal(false, team_awesome.find_player("Dave"))
  end

  def test_victory_loss_loss
    team_awesome = Teams.new("awesome", ["Paul", "Steve"], "MacDonald", 0)
    assert_equal(0,team_awesome.victory_loss(false))
  end

  def test_victory_loss_victory
    team_awesome = Teams.new("awesome", ["Paul", "Steve"], "MacDonald", 0)
    assert_equal(1,team_awesome.victory_loss(true))
  end

end
