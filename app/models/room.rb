class Room < ActiveRecord::Base
  attr_accessible :name, :description, :EastImage, :EastRoom, :NorthImage, :NorthRoom, :SouthImage, :SouthRoom, :WestImage, :WestRoom
  
  def image direction
    case direction
    when "n"
      return self.NorthImage
    when "e"
      return self.EastImage
    when "s"
      return self.SouthImage
    when "w"
      return self.WestImage
    else
      return nil
    end
  end
  def room direction
    case direction
    when "n"
      return self.NorthRoom
    when "e"
      return self.EastRoom
    when "s"
      return self.SouthRoom
    when "w"
      return self.WestRoom
    else
      return nil
    end
  end
  
end
