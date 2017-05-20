class PagesController < ApplicationController

  def home
  end

  def war
    @team_one = Team.new(username: params[:war][:github_username_one], repository: params[:war][:repository_one])
    @team_two = Team.new(username: params[:war][:github_username_two], repository: params[:war][:repository_two])
    if @team_one.valid? && @team_two.valid?
      @first_repo = Github.new.repos.stats.contributors @team_one.username, @team_one.repository
      @second_repo = Github.new.repos.stats.contributors @team_two.username, @team_two.repository
    else
      render :home
    end
  end
end
