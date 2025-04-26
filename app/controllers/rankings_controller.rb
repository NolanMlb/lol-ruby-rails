class RankingsController < ApplicationController
  def index
    @teams = Team.all.sort_by { |team| -team.victories_count }
  end
end