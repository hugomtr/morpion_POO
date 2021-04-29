require 'bundler'
Bundler.require

require_relative 'player'
require_relative 'board_case'


class Board < BoardCase
  attr_accessor :board_case

  def initialize
    @board_case=BoardCase.new
  end 

  def choice_player(case_selected,symbol_player)  ##=> modif sur le board
    case
    when case_selected == 'A1'
      if symbol_player == "X"
        self.board_case.A1 = "X"
      else
        self.board_case.A1 = "O"
      end
    when case_selected == 'A2'
      if symbol_player == "X"
        self.board_case.A2 = "X"
      else
        self.board_case.A2 = "O"
      end 
    when case_selected == 'A3'
      if symbol_player == "X"
        self.board_case.A3 = "X"
      else
        self.board_case.A3 = "O"
      end
    when case_selected == 'B1'
      if symbol_player == "X"
        self.board_case.B1 = "X"
      else
        self.board_case.B1 = "O"
      end
    when case_selected == 'B2'
      if symbol_player == "X"
        self.board_case.B2 = "X"
      else
        self.board_case.B2 = "O"
      end
    when case_selected == 'B3'
      if symbol_player == "X"
        self.board_case.B3 = "X"
      else
        self.board_case.B3 = "O"
      end
    when case_selected == 'C1'
      if symbol_player == "X"
        self.board_case.C1 = "X"
      else
        self.board_case.C1 = "O"
      end
    when case_selected == 'C2'
      if symbol_player == "X"
        self.board_case.C2 = "X"
      else
        self.board_case.C2 = "O"
      end
    when case_selected == 'C3'
      if symbol_player == "X"
        self.board_case.C3 = "X"
      else
        self.board_case.C3 = "O"
      end
    end
  end

  def get_a1
    return @A1
  end
  
  def verify_diagonal
    if self.board_case.C1=="X" && self.board_case.B2=="X" && self.board_case.A3=="X"
      return true
    elsif self.board_case.C1=="O" && self.board_case.B2=="O" && self.board_case.A3=="O"
      return true
    elsif self.board_case.C3=="X" && self.board_case.B2=="X" && self.board_case.A1=="X"
      return true
    elsif self.board_case.C3=="O" && self.board_case.B2=="O" && self.board_case.A1=="O"
      return true
    end
    return false
  end

  def verify_column
    if self.board_case.C1=="X" && self.board_case.B1=="X" && self.board_case.A1=="X"
      return true
    elsif self.board_case.C1=="O" && self.board_case.B1=="O" && self.board_case.A1=="O"
      return true
    elsif self.board_case.C2=="X" && self.board_case.B2=="X" && self.board_case.A2=="X"
      return true
    elsif self.board_case.C2=="O" && self.board_case.B2=="O" && self.board_case.A2=="O"
      return true
    elsif self.board_case.C3=="X" && self.board_case.B3=="X" && self.board_case.A3=="X"
      return true
    elsif self.board_case.C3=="O" && self.board_case.B3=="O" && self.board_case.A3=="O"
      return true
    end
    return false
  end

  def verify_row
    if self.board_case.A1=="X" && self.board_case.A2=="X" && self.board_case.A3=="X"
      return true
    elsif self.board_case.A1=="O" && self.board_case.A2=="O" && self.board_case.A3=="O"
      return true
    elsif self.board_case.B1=="X" && self.board_case.B2=="X" && self.board_case.B3=="X"
      return true
    elsif self.board_case.B1=="O" && self.board_case.B2=="O" && self.board_case.B3=="O"
      return true
    elsif self.board_case.C3=="X" && self.board_case.B3=="X" && self.board_case.A3=="X"
      return true
    elsif self.board_case.C3=="O" && self.board_case.B3=="O" && self.board_case.A3=="O"
      return true
    end
    return false
  end
  #def verify_row

end

    

binding.pry



