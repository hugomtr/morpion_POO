#cette classe va nous permettre de lancer le jeu. Elle va faire une boucle infinie de parties 
#(on joue tant que les joueurs veulent continuer) et lancer l'instanciation d'un Game.
require_relative 'show'
require_relative 'game'


class Application
  attr_accessor :game :show
  def initialize(game)
    @game=game
  end
  

  def show_game
    Show.display_info_board
    game1.add_players #ajout des joueurs et attrinutions des symboles
  while true
      game1 = Game.new
      round=0
      while !end_game?
        round+=1
        #display
        game1.turn_player1
        
        game1.turn_player2
      end
      game1.switch_players
      Show.menu#menu pour quitter démarrer une partie etc..
    end
  end


end
    