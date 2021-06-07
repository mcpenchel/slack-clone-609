class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    # # Allow information to be broadcasted to this "connection"/"cable"
    # stream_for "general"
    # stream_for "teachers"
    # stream_for "pvt-message-between-danilo-and-pedro"

    chatroom = Chatroom.find(params[:id])
    stream_for chatroom # "chatroom/crazy-crazy-random-str/1"
  end

  # def unsubscribed
  #   # Any cleanup needed when channel is unsubscribed

  #   # ex: ChatRoulette
  #   # ChatRoulette deletes everything, messages, videos, images
  #   # right after the user leaves the chat
  # end
end
