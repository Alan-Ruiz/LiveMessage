module ApplicationCable
  class Channel < ActionCable::Channel::Base
    def subscribed
      stream_from "messages_#{params[:chat_id]}"
    end
  end
end
