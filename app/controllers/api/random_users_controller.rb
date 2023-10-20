
class Api::RandomUsersController < ApplicationController
  def show
    random_user_service = RandomUserApiService.new
    @random_user = random_user_service.fetch_random_user
  end
end
