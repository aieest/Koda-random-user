class RandomUserApiService
  attr_reader :url
  def initialize
    @url = 'https://randomuser.me/api/'
  end

  def fetch_random_user
    request = RestClient.get url
    JSON.parse(request.body)
  end
end