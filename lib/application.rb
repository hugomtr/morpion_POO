require_relative 'show'
require_relative 'game'

class Application
  attr_accessor :game, :players
  def initialize
    @game=Game.new
    @game.add_players
  end
  
  def show_game
    while true
      app=Application.new
      show = Show.new
      show.presentation
      show.display_info_board
      loop do
        app.game.turn_player2
        if app.game.end_game? == true
          puts app.game.end_game?
          break 
        end
        app.game.turn_player1
        if app.game.end_game? == true
          puts app.game.end_game?
          break 
        end
      end
      break if show.menu == "q"
    end
    system ("clear")
    puts "Vous êtes sorti du jeu"
  end

end
  
