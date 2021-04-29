require_relative 'show'
require_relative 'game'

class Application
  attr_accessor :game, :players
  def initialize
    @game=Game.new
    @game.add_players
  end
  
  
  
  app=Application.new  

  def show_game
    while true
      show=Show.new
      show.presentation
      show.display_info_board
      loop do
        self.game.turn_player2
        if self.game.end_game? == true
          puts self.game.end_game?
          break 
        end
        self.game.turn_player1
        if self.game.end_game? == true
          puts self.game.end_game?
          break 
        end
      end
      break if show.menu == "q"
    end
    system ("clear")
    puts "Vous êtes sorti du jeu"
  end
  
  app.show_game

end
  
