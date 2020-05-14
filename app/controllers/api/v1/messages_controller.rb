class Api::V1::MessagesController < ActionController::API
  def index
    messages = Message.all
    messages = messages.map do |message|
      {
        id: message.id,
        body: message.body,
        sender: message.sender,
        posted_at: message.posted_at
      }
    end

    render json: { results: messages }.to_json, status: :ok
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      render json: @message, status: :created
    else
      render json: { errors: @message.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.permit(:body, :sender, :posted_at)
  end
end
