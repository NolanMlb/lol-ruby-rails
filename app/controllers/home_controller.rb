class HomeController < ApplicationController
  def index
    @last_matches = Match.order(date: :desc).limit(5)
    @ranked_teams = Team.all.sort_by { |team| -team.victories_count }
  end
end