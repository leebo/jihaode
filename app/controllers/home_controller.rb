class HomeController < ApplicationController
  def index
    @users = User.all
    @users = User.all
  end
end
