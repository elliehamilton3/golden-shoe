class ChatService
  attr_reader :response_message

  def initialize(uid)
    @client = ApiAiRuby::Client.new(
      client_access_token: ENV['API_AI_CLIENT_ACCESS_TOKEN'],
      api_session_id: uid
    )
  end

  def execute(message)
    # // Some logic here to get @response_message
    # @response_message
    'hello'
  end
end
