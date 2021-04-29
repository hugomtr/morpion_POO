require 'bundler'
Bundler.require

require_relative 'player'
require_relative 'board_case'

class Board < BoardCase

  def initialize
    self.A1=" "
    self.A2=" "
    self.A3=" "
    self.B1=" "
    self.B2=" "
    self.B3=" "
    self.C1=" "
    self.C2=" "
    self.C3=" "
  end 

  def choice_player(case_selected,symbol_player)  ##=> modif sur le board
    case
    when case_selected == 'A1'
      if symbol_player == "X"
        self.A1 = "X"
      else
        self.A1 = "O"
      end
    when case_selected == 'A2'
      if symbol_player == "X"
        self.A2 = "X"
      else
        self.A2 = "O"
      end 
    when case_selected == 'A3'
      if symbol_player == "X"
        self.A3 = "X"
      else
        self.A3 = "O"
      end
    when case_selected == 'B1'
      if symbol_player == "X"
        self.B1 = "X"
      else
        self.B1 = "O"
      end
    when case_selected == 'B2'
      if symbol_player == "X"
        self.B2 = "X"
      else
        self.B2 = "O"
      end
    when case_selected == 'B3'
      if symbol_player == "X"
        self.B3 = "X"
      else
        self.B3 = "O"
      end
    when case_selected == 'C1'
      if symbol_player == "X"
        self.C1 = "X"
      else
        self.C1 = "O"
      end
    when case_selected == 'C2'
      if symbol_player == "X"
        self.C2 = "X"
      else
        self.C2 = "O"
      end
    when case_selected == 'C3'
      if symbol_player == "X"
        self.C3 = "X"
      else
        self.C3 = "O"
      end
    end
  end

  def display_board
    system('clear')
    puts "
                                                        
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


                  #{self.A1=get_A1}  |  #{self.A2=get_A2}  |  #{self.A3=get_A3}     
                _____|_____|_____
                     |     | 
                  #{self.B1=get_B1}  |  #{self.B2=get_B2}  |  #{self.B3=get_B3}
                _____|_____|_____
                     |     | 
                  #{self.C1=get_C1}  |  #{self.C2=get_C2}  |  #{self.C3=get_C3}  

                 **************              "
  end

  def verify_diagonal
    if self.get_C1=="X" && self.get_B2=="X" && self.get_A3=="X"
      return true
    elsif self.get_C1=="O" && self.get_B2=="O" && self.get_A3=="O"
      return true
    elsif self.get_C3=="X" && self.get_B2=="X" && self.get_A1=="X"
      return true
    elsif self.get_C3=="O" && self.get_B2=="O" && self.get_A1=="O"
      return true
    end
    return false
  end

  def verify_column
    if self.get_C1=="X" && self.get_B1=="X" && self.get_A1=="X"
      return true
    elsif self.get_C1=="O" && self.get_B1=="O" && self.get_A1=="O"
      return true
    elsif self.get_C2=="X" && self.get_B2=="X" && self.get_A2=="X"
      return true
    elsif self.get_C2=="O" && self.get_B2=="O" && self.get_A2=="O"
      return true
    elsif self.get_C3=="X" && self.get_B3=="X" && self.get_A3=="X"
      return true
    elsif self.get_C3=="O" && self.get_B3=="O" && self.get_A3=="O"
      return true
    end
    return false
  end

  def verify_row
    if self.get_A1=="X" && self.get_A2=="X" && self.get_A3=="X"
      return true
    elsif self.get_A1=="O" && self.get_A2=="O" && self.get_A3=="O"
      return true
    elsif self.get_B1=="X" && self.get_B2=="X" && self.get_B3=="X"
      return true
    elsif self.get_B1=="O" && self.get_B2=="O" && self.get_B3=="O"
      return true
    elsif self.get_C3=="X" && self.get_B3=="X" && self.get_A3=="X"
      return true
    elsif self.get_C3=="O" && self.get_B3=="O" && self.get_A3=="O"
      return true
    end
    return false
  end

end

    
binding.pry



