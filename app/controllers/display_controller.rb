class DisplayController < ApplicationController
  def splash
    cookies[:direction] = "n"
    cookies[:room] = 1
  end

  def normal
    if cookies[:direction].blank?
      redirect_to action: "splash" 
    end
    @room = Room.find(cookies[:room])
  end

  def gameOver
  end
  
  def left
    case cookies[:direction]
    when "n"
      cookies[:direction] = "w"
    when "e"
      cookies[:direction] = "n"
    when "s"
      cookies[:direction] = "e"
    when "w"
      cookies[:direction] = "s"
    else
      cookies[:direction] = "n"
    end
    redirect_to action: "normal"
  end
  
  def right
    case cookies[:direction]
    when "n"
      cookies[:direction] = "e"
    when "e"
      cookies[:direction] = "s"
    when "s"
      cookies[:direction] = "w"
    when "w"
      cookies[:direction] = "n"
    else
      cookies[:direction] = "n"
    end
    redirect_to action: "normal"
  end
  def forward
    room = Room.find(cookies[:room])
    @nextRoomNum = room.room(cookies[:direction])
    cookies[:room] = @nextRoomNum unless @nextRoomNum.nil?
    redirect_to action: "normal"
  end
  def backward
    case cookies[:direction]
    when "n"
      cookies[:direction] = "s"
    when "e"
      cookies[:direction] = "w"
    when "s"
      cookies[:direction] = "n"
    when "w"
      cookies[:direction] = "e"
    else
      cookies[:direction] = "n"
    end
    redirect_to action: "normal"
  end
end
