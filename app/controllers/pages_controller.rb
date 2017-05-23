class PagesController < ApplicationController

  def home
  end

  def war
    flash.discard(:alert)
    @team_one = Team.new(username: params[:war][:github_username_one], repository: params[:war][:repository_one])
    @team_two = Team.new(username: params[:war][:github_username_two], repository: params[:war][:repository_two])
    if @team_one.valid? && @team_two.valid?
      begin
        @first_repo = Github.new.repos.stats.contributors @team_one.username, @team_one.repository
      rescue
        flash.now[:alert] = 'First team\'s repo not found'
        render :home
      end
      begin
        @second_repo = Github.new.repos.stats.contributors @team_two.username, @team_two.repository
      rescue
        flash.now[:alert] = 'Second team\'s repo not found'
        render :home
      end
    else
      flash.now[:alert] = 'Fields can\'t be blank'
      render :home
    end
  end
end
