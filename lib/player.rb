class Player 
  attr_accessor :name, :symbol

  def initialize(name,symbol)
    @name=name
    @symbol=symbol
  end

  def self.add_first_player
    system('clear')
    puts "Please Enter your name"
    print"> "
    input_name1 = gets.chomp
    puts "Thanks you will have the Symbol 'X'"
    sleep(2)
    puts "Bienvenue #{input_name1}"
    return player1=Player.new(input_name1,'X')
  end

  def self.add_second_player
    system('clear')
    puts "\n\n\nPlease Enter your name"
    print"> "
    input_name2=gets.chomp
    puts "Thanks you will Have the Symbol 'O'"
    sleep(2)
    puts "Bienvenue #{input_name2}"
    puts "________________________
╔═╗╗╔═╗╔═╗╔╦╗
║   ║╣ ╚═╗ ║ 
╚═╝ ╚═╝╚═╝ ╩ 
**********************
#{input_name2}!!
**********************
╔═╗ ╦ ╦ ╦
║ ║ ║ ║ ║
╚═╬ ╚═╝ ╩ 
╔═╗╔═╗╔╦╗╔╦╗╔═╗╔╗╔╔═╗╔═╗
║  ║ ║║║║║║║║╣ ║║║║  ║╣ 
╚═╝╚═╝╩ ╩╩ ╩╚═╝╝╚╝╚═╝╚═╝
________________________"
      sleep(1)
      return player2=Player.new(input_name2,'O')
  end
  
  def select_a_board_case
    arr=[]
    puts "Enter the case"
    print"> "
    input_board_case = gets.chomp.upcase
    if not ['A1','A2','A3','B1','B2','B3','C1','C2','C3'].include?(input_board_case)
      system('clear')        
      puts "___________________________________
            ┬┌─┐┬┌─┐
            │ ┌┘│ ┌┘
            o o o o 
     ▄██▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█▄
    ███─────────────────────██
   ███───────────────────────██
  ███────▄▀▀▀▀▄─────▄▀▀▀▀▄────██
 ████──▄▀──────▀▄─▄▀──────▀▄──███
 ████───▄██████─────██████▄───███
█████──██▓▓▓▓▓██───██▓▓▓▓▓██──█████
█████──██▓▓█▓▓██───██▓▓█▓▓██──█████
█████──██▓▓▓▓▓█▀─▄─▀█▓▓▓▓▓██──█████
████▀──▀▀▀▀▀▀▀▀─▄█▄─▀▀▀▀▀▀▀▀──▀████
███─▄▀▀▀▄──────█████──────▄▀▀▀▄─███
███──▄▀▄─█────███████────█─▄▀▄──███
███─█──█─█────███████────█─█──█─███
███─█─▀──█───▄███████▄───█──▀─█─███
███▄─▀▀▀▀────█─▀███▀─█────▀▀▀▀─▄███
████───────────────────────────████
 ███─────▀████████████████▀─────██
 ███─────────█───────█────────███
   ████─────█─────────█──────████
     ███▄──█────███────█───▄███
       ▀█████▄▄█████▄▄███████▀
              █     █
     ╔═╗╔╦╗╔╦╗╔═╗╔╗╔╦╗╦╔═╗╔╗╔
     ╠═╣ ║  ║ ║╣ ║║║║ ║║ ║║║║
     ╩ ╩ ╩  ╩ ╚═╝╝╚╝╩ ╩╚═╝╝╚╝   
            ┬┌─┐┬┌─┐
            │ ┌┘│ ┌┘
            o o o o 
      **********************
   !!!! de 'A1' à 'C3' !!!!
      **********************
Rentre une case Valide:"
      print "> "
      input_board_case = gets.chomp.upcase
    end
    arr << input_board_case
    arr << self.symbol  #symbole joueur
    return arr
  end
end


    
