class PagesController < ApplicationController

  def home
  end

  def war
    @first_repo = Github.new.repos.stats.contributors params[:war][:github_username_one], params[:war][:repository_one]
    @second_repo = Github.new.repos.stats.contributors params[:war][:github_username_two], params[:war][:repository_two]
  end

end
