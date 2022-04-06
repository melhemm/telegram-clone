class AppearanceChannel < ApplicationCable::Channel
  def subscribed
    stream_from "appearance_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    stop_stream "appearance_channel"
    offline
  end

  def online
    
  end

  def away
    
  end

  def offline
    
  end

  def receive(data)
    
  end

  private

  def broadcast_new_status(status)
    current_user.update!(status: status)
  end
  
end
