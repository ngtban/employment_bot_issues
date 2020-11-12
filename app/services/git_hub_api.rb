class GitHubApi
  REPOSITORY_PATH = 'nnluukhtn/employment_bot'.freeze

  def get_repo_issues(params = {})
    Octokit.list_issues(REPOSITORY_PATH)
  end

  def get_issue(params = {})
    Octokit.issue(REPOSITORY_PATH, params[:number])
  end
end