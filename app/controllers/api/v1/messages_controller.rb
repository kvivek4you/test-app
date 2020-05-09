module Api
  module V1
    class MessagesController < ApiController

      # GET /messages
      # GET /messages.json
      def index
        @messages = Message.all
      end

      # POST /messages
      # POST /messages.json
      def create
        @message = Message.new(message_params)

        respond_to do |format|
          if @message.save
            format.html { redirect_to @message, notice: 'Message was successfully created.' }
            format.json { render :show, status: :created, location: @message }
          else
            format.html { render :new }
            format.json { render json: @message.errors, status: :unprocessable_entity }
          end
        end
      end

      private

      # Only allow a list of trusted parameters through.
      def message_params
        params.require(:message).permit(:text, :user_id)
      end
    end
  end
end
