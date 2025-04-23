class Match < ApplicationRecord
    belongs_to :team1, class_name: 'Team'
    belongs_to :team2, class_name: 'Team'
  
    validates :team1, :team2, :date, presence: true
    validate :teams_must_be_ready
  
    def teams_must_be_ready
      if team1.players.empty? || team2.players.empty?
        errors.add(:base, "Les deux équipes doivent avoir au moins un joueur")
      end
    end
  end