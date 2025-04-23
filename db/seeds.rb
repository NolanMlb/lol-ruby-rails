# Create two teams
team1 = Team.create!(name: "Blue Buff")
team2 = Team.create!(name: "Red Buff")

# Get the list of roles from Player model
roles = Player::ROLES

# Create 5 players for each team, assigning them different roles
5.times do |i|
  Player.create!(first_name: "Joueur", last_name: "Bleu#{i}", role: roles[i], team: team1)
  Player.create!(first_name: "Joueur", last_name: "Rouge#{i}", role: roles[i], team: team2)
end

# Create a match between the two teams with a final score
Match.create!(
  team1: team1,
  team2: team2,
  result: "Victoire de Blue Buff",
  score_team1: 25,
  score_team2: 18,
  date: Time.now
)