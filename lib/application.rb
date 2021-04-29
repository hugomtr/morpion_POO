#cette classe va nous permettre de lancer le jeu. Elle va faire une boucle infinie de parties 
#(on joue tant que les joueurs veulent continuer) et lancer l'instanciation d'un Game.
require_relative 'show'
require_relative 'game'

require 'bundler'
Bundler.require



class Application
  attr_accessor :game 
  def initialize
    @game= Game.new
  end
  

  def show_game
    Show.display_info_board
    self.game.add_players #ajout des joueurs et attrinutions des symboles
    while true
      game1 = Game.new
      round=0
      while !(self.game.end_game?)
        round+=1
        display        ## utiliser un break if
        self.game.turn_player2
        display
        self.game.turn_player1
      end
      #Show.menu#menu pour quitter démarrer une partie etc..
    end
  end


end
  
binding.pry
