#c'est le jeu. Elle initialise tout, lance une partie 
#(qui se termine avec une victoire ou un nul), permet de jouer un tour, de chercher si la partie est finie, etc.
require 'bundler'
Bundler.require

require_relative 'board'
require_relative 'player'
require_relative 'show'
require 'pry'

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
    #display_board
    puts "It's player1's turn to play"
    case_selected = self.players[1].select_a_board_case[0]
    self.board.choice_player(choix_joueur1,"X")
  end
  
  def turn_player2
    #display_board
    puts "It's player2's turn to play"
    case_selected = self.players[0].select_a_board_case[0]
    self.board.choice_player(case_selected,"O")
  end
  
  def end_game?
    if verify_column || verify_diagonal || verify_row 
      if 9-self.board.board_case.cases_left % 2 == 0
        current_player_name=self.players[1].name
      else
        current_player_name=self.players[0].name
      end
      system('clear')
      return "______________
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
system('clear')
    elsif self.board.board_case.cases_left
      return "_________________________________________________
                                                  
                     'cxOOxc'                     
                  ':d0NWWWWNKxc'                  
                ;oONWWWWWWWWWWN0d:'               
             ;oOXWWWNOdddoodkXWWWN0d:             
          ;lkXWWWWNOookK0kdollxXWWWWXOo;          
       ,lkXWWWWWWNxckNWWXOkdxd:lKWWWWWWXOo;       
    ,ckKWWWWWWWWNdc0WWWWXOxdddo;:KWWWWWWWWXkl,    
 'cxKNWWWWWWWWWNd:kXK0OOxdlcllol;cKWWWWWWWWWWKkc, 
'dNWWWWWWWWWWWWk,,;;clcccccccc;'''lXWWWWWWWWWWWWk,
 cXWWWWWWWWWWWXl   'xNWWKkKNW0;   ,OWWWWWWWWWWWNo 
  dNWWWWWWWWWWWKl'  ;OWWNXXWXl   ;kNWWWWWWWWWWWk' 
  ,OWWWWWWWWWN0d:    ,ldxkxo:    ,oOXWWWWWWWWW0;  
   cXWWWWWWWKl'''''''''''''''''''''';kNWWWWWWNl   
    dNWWWWWK: ,kKKKK0KKK00K00K0KKK0c 'kWWWWWWx'   
    ,OWWWWXl  ;0WWWWWWWWWWWWWNWWWWNl  ;OWWWW0;    
     cKWWNd'  ,OWWWWKkkO0X0kOkONWWXl   cKWWXl     
      dNWXc   ,OWWWWNkOkx0xldO0NWWXc   'kWWx'     
      ,OWNx,  'kWWWWNXXXXWNKKWWWWWK:   lXM0;      
       ;dxdc' 'xXXXXXXXXXXXXXXXXXX0;  ;oxd:       
        :kOO0d,:ooooooooooooooooooc,cOOOOc        
        ,kWWWXdodddddddddddddddddxdo0WWW0;        
         ;dxxxxxxxxxxxxxxxxxxxxxxxxxxxxx:         
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
    end
  end

  def menu
    puts "Une autre?"
    puts "press q to quit or any other key to continue"
  end
end

binding.pry
