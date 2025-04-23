class PlayersController < ApplicationController
    def index
        @players = Player.all
    end

    def show
        @player = Player.find(params[:id])
    end

    def new
      @team = Team.find(params[:team_id])
      @player = @team.players.new
    end
  
    def create
      @team = Team.find(params[:team_id])
      @player = @team.players.new(player_params)
  
      if @player.save
        redirect_to team_path(@team), notice: "Joueur ajouté avec succès."
      else
        render :new
      end
    end

    def edit
        @player = Player.find(params[:id])
    end

    def update
        @player = Player.find(params[:id])
        if @player.update(player_params)
            redirect_to player_path(@player), notice: "Joueur modifié avec succès."
        else
            render :edit
        end
    end

    def destroy
      @player = Player.find(params[:id])
      @player.destroy
      redirect_to team_path(@player.team), notice: "Joueur supprimé."
    end
  
    private
  
    def player_params
      params.require(:player).permit(:first_name, :last_name, :role)
    end
end