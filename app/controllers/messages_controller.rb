class MessagesController < ApplicationController

  def create
    ActionCable.server.broadcast 'messages',
      message: params[:message][:body],
      username: cookies.signed[:username] if params[:message][:body].present?

    head :ok
  end
end
