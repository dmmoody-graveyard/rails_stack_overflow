class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find_by(username: params[:username])
    @questions = @user.questions.all
    @comments = @user.comments.all
  end
end