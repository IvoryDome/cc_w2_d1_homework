require('minitest/autorun')
require_relative('../sports_team.rb')

class TestTean < MiniTest::Test

def test_team__getters
  team = Team.new("The Raging Elephants", ["Pele", "Mike Tyson", "Lance Armstrong"], "Scolari")
  assert_equal("The Raging Elephants", team.team_name)
  assert_equal(["Pele", "Mike Tyson", "Lance Armstrong"], team.team_players)
  assert_equal("Scolari", team.team_coach)
end

def test_set_coach
  team = Team.new("The Raging Elephants", ["Pele", "Mike Tyson", "Lance Armstrong"], "Scolari")
  team.set_coach("Jose Mourinho")
  assert_equal("Jose Mourinho", team.team_coach)
end

def test_add_new_player
  team = Team.new("The Raging Elephants", ["Pele", "Mike Tyson", "Lance Armstrong"], "Scolari")
  team.add_new_player("Connor McGregor")
  assert_equal(["Pele", "Mike Tyson", "Lance Armstrong", "Connor McGregor"], team.team_players)
end

def test_find_player__not_found
  team = Team.new("The Raging Elephants", ["Pele", "Mike Tyson", "Lance Armstrong"], "Scolari")
  result = team.find_player("Floyd Mayweather")
  assert_equal(false, result)
end

def test_find_player__found
  team = Team.new("The Raging Elephants", ["Pele", "Mike Tyson", "Lance Armstrong"], "Scolari")
  result = team.find_player("Mike Tyson")
  assert_equal(true, result)
end

def test_win_or_lose
  team = Team.new("The Raging Elephants", ["Pele", "Mike Tyson", "Lance Armstrong"], "Scolari")
  result = team.win_or_lose(7, 3)
  assert_equal("Victory!", result)
end






end
