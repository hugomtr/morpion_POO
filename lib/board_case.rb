class BoardCase
  
  def initialize
    @A1=" "
    @B1=" "
    @C1=" "
    @A2=" "
    @B2=" "
    @C2=" "
    @A3=" "
    @B3=" "
    @C3=" "
  end
#fonctions pour modifier les valeurs du tableau
  def A1=(a1)
    @A1=a1
  end
  def A2=(a2)
    @A2=a2
  end
  def A3=(a3)
    @A3=a3
  end
  def B1=(b1)
    @B1=b1
  end
  def B2=(b2)
    @B2=b2
  end
  def B3=(b3)
    @B3=b3
  end
  def C1=(c1)
    @C1=c1
  end
  def C2=(c2)
    @C2=c2
  end
  def C3=(c3)
    @C3=c3
  end
#fonctions pour renvoyer les valeurs du tableau
  def get_A1
    return @A1
  end
  def get_A2
  return @A2
  end
  def get_A3
    return @A3
  end
  def get_B1
    return @B1
  end
  def get_B2
    return @B2
  end
  def get_B3
    return @B3
  end
  def get_C1    
    return @C1
  end
  def get_C2
    return @C2
  end
  def get_C3
    return @C3
  end 

  def cases_left
    i=0
    [@A1,@A2,@A3,@B1,@B2,@B3,@C1,@C2,@C3].each do |value|
      i+=1 if value == " "
    end
    return i
  end
end





