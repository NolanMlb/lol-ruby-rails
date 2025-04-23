class HomeController < ApplicationController
  def index
    @last_matches = Match.order(date: :desc).limit(5)
  end
end