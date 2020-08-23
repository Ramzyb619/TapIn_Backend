class TwilioTextMessenger
    attr_reader :message, :phone_number
  
    def initialize(message, phone_number)
      @message = message
      @phone_number = phone_number
    end
  
    def call()
      client = Twilio::REST::Client.new
      client.messages.create({
        from: '+12019285612',
        to: phone_number,
        body: message
      })
    end
  end