class Show 
  def initialize
  end

  def presentation
    system ("clear")
    puts "BIENVENUE DANS LE JEU DU MORPION".center(150," ")
    puts " Règles:Deux joueurs s'affrontent. Ils doivent remplir chacun à leur tour une case de la grille avec le symbole qui leur est attribué:"
    puts " O ou X. Le gagnant est celui qui arrive à aligner trois symboles identiques, horizontalement, verticalement ou en diagonale."
    sleep(5)
  end
  
  def display_info_board # à afficher seulement au premier tour
    puts "To choice one case you have to enter the coordinates of the cases"
    puts "'A1' for top left corners 'C3' for bottom right corners ...   "
    sleep(7)
  end
  
  def menu
    system ("clear")
    puts "Vous êtes sur le menu Pricipal! Que souhaitez vous faire?"
    puts "Press 'q' to quit the game"
    puts "Press any other key to play again"
    print "> "
    input = gets.chomp
    return input
  end
end

