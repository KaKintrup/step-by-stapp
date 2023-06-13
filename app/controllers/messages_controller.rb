class MessagesController < ApplicationController
  def show
    @challenge = Challenge.find(params[:id])
    @message = Message.new
  end

  def create
    @challenge = Challenge.find(params[:id])
    @message = Message.new(message_params)
    @message.challenge = @challenge
    @message.user = current_user
    if @message.save
      redirect_to challenge_messages_path(@challenge)
    else
      render "show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
