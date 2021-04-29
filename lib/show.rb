#cette classe sera une sorte de view. Elle affichera l'état du plateau de jeu à un instant T.
require 'bundler'

Bundler.require


class Show 
  def initialize
  end

  def self.presentation
    system ("clear")
    puts "BIENVENUE DANS LE JEU DU MORPION".center(150," ")
    puts " Règles:Deux joueurs s'affrontent. Ils doivent remplir chacun à leur tour une case de la grille avec le symbole qui leur est attribué:"
    puts " O ou X. Le gagnant est celui qui arrive à aligner trois symboles identiques, horizontalement, verticalement ou en diagonale."
    sleep(0,3)
  end
  
  def self.display_info_board # à afficher seulement au premier tour
    puts "To choice one case you have to enter the coordinates of the cases"
    puts "'A1' for top left corners 'C3' for bottom right corners ... "
  end

  #def display_board
  
  #def menu
    #def play_again
    #def quit game

end

