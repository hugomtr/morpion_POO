#c'est le jeu. Elle initialise tout, lance une partie 
#(qui se termine avec une victoire ou un nul), permet de jouer un tour, de chercher si la partie est finie, etc.
require 'bundler'
Bundler.require

require_relative 'board'
require_relative 'player'
require_relative 'show'


class Game 
  attr_accessor :board, :players
  
  def initialize 
    @board = Board.new
    @players = []
  end

  def add_players
    self.players << Player.add_first_player
    self.players << Player.add_second_player
    return self.players
  end
  
  def turn_player1
    self.board.display_board
    puts "It's player1's turn to play"
    case_selected = self.players[0].select_a_board_case[0]
    self.board.choice_player(case_selected,"X")
  end
  
  def turn_player2
    self.board.display_board
    puts "It's player2's turn to play"
    case_selected = self.players[1].select_a_board_case[0]
    self.board.choice_player(case_selected,"O")
  end
  
  def end_game?
    if self.board.verify_column || self.board.verify_diagonal || self.board.verify_row 
      if 9-self.board.cases_left % 2 == 0
        current_player_name=self.players[0].name
      else
        current_player_name=self.players[1].name
      end
      system('clear')
      puts "______________
╔╗ ╦═╗╔═╗╦  ╦╔═╗
╠╩╗╠╦╝╠═╣╚╗╔╝║ ║
╚═╝╩╚═╩ ╩ ╚╝ ╚═╝
*****************
#{current_player_name} !
*****************
╔╦╗╦ ╦  ╔═╗╔═╗ 
 ║ ║ ║  ╠═╣╚═╗ 
 ╩ ╚═╝  ╩ ╩╚═╝ 
╔═╗╔═╗╔═╗╔╗╔╔═╗
║ ╦╠═╣║ ╦║║║║╣ 
╚═╝╩ ╩╚═╝╝╚╝╚═╝
______________"
      sleep(3)
      return true
    system('clear')
    elsif self.board.cases_left == 0
      puts "_________________________________________________

              ╔═╗╔═╗╔═╗╦  ╦╔╦╗╔═╗   
              ║╣ ║ ╦╠═╣║  ║ ║ ║╣    
              ╚═╝╚═╝╩ ╩╩═╝╩ ╩ ╚═╝   
             ╔═╗╔═╗╦═╗╔═╗╔═╗╔╗╔╗╔╔═╗
             ╠═╝║╣ ╠╦╝╚═╗║ ║║║║║║║╣ 
             ╩  ╚═╝╩╚═╚═╝╚═╝╝╚╝╚╝╚═╝
             ╔╗╔╔═╗  ╔═╗╔═╗╔═╗╔╗╔╔═╗
             ║║║║╣   ║ ╦╠═╣║ ╦║║║║╣ 
             ╝╚╝╚═╝  ╚═╝╩ ╩╚═╝╝╚╝╚═╝
_________________________________________________"
      sleep(3)
      return true
    end
    return false
  end

  def menu
    puts "Une autre?"
    puts "press q to quit or any other key to continue"
  end
end

