class Team
attr_accessor :team_name, :team_players, :team_coach, :points

def initialize(input_team_name, input_team_players = [], input_team_coach)
  @team_name = input_team_name
  @team_players = input_team_players
  @team_coach = input_team_coach
  @points = 0
end

def set_coach(new_coach)
  @team_coach = new_coach
end

def add_new_player(new_player)
  @team_players.push(new_player)
end

def find_player(player_to_find)
  for player in @team_players
    if player == player_to_find
      return true
    end
  end
return false
end

def win_or_lose(team_score, opponent_score)
  if team_score > opponent_score
    p "Victory!"
  elsif team_score == opponent_score
    p "Draw"
  else team_score < opponent_score
    p "Loss"
  end
end

















end
