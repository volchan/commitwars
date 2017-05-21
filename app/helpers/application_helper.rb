module ApplicationHelper

  def find_owner(repo, owner_name)
    repo.each.find { |i| i.author.login == owner_name }
  end

  def compute_commits(repo)
    total_commits = 0
    repo.each { |contributor| total_commits += contributor.total  }
    total_commits
  end
end
