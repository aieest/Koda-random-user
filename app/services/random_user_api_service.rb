class RandomUserApiService
  attr_reader :url, :api_key
  def initialize
    @url = 'https://randomuser.me/api'

  end

  def fetch
    response = RestClient.get("#{url}")
    JSON.parse(response.body)
  end
end