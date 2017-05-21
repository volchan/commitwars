module ApplicationHelper

  def find_owner(repo, owner_name)
    repo.each.find { |i| i.author.login == owner_name }
  end

  def compute_commits(repo)
    total_commits = 0
    repo.each { |contributor| total_commits += contributor.total  }
    total_commits
  end

  def render_navbar
    render 'shared/navbar' unless is_home
  end

  private

  def is_home
    controller_name == "pages" && action_name == "home"
  end
end
