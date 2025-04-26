class Team < ApplicationRecord
  has_many :players, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validate :maximum_five_players

  def maximum_five_players
    errors.add(:base, "Une équipe ne peut pas avoir plus de 5 joueurs") if players.size > 5
  end

  def victories_count
    Match.where("(team1_id = :id AND score_team1 > score_team2) OR (team2_id = :id AND score_team2 > score_team1)", id: id).count
  end
end