class IssuesController < ApplicationController
  def index
    respond_to do |format|
      format.html do
        @issues = git_hub_api_service.get_repo_issues
      end
      format.json do

      end
    end
  end

  private

  def git_hub_api_service
    @git_hub_api_service ||= GitHubApi.new
  end
end
