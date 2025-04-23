class MatchesController < ApplicationController
    def index
      @matches = Match.all.order(date: :desc)
    end
  
    def show
      @match = Match.find(params[:id])
    end
  
    def new
      @match = Match.new
    end
  
    def create
      @match = Match.new(match_params)
      if @match.save
        redirect_to matches_path, notice: "Match créé avec succès."
      else
        render :new
      end
    end
  
    private
  
    def match_params
      params.require(:match).permit(:team1_id, :team2_id, :result, :score_team1, :score_team2, :date)
    end
end