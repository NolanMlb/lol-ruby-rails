class Team < ApplicationRecord
    has_many :players, dependent: :destroy
  
    validates :name, presence: true, uniqueness: true
    validate :maximum_five_players
  
    def maximum_five_players
      errors.add(:base, "Une équipe ne peut pas avoir plus de 5 joueurs") if players.size > 5
    end
  end