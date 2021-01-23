class IssueController < ApplicationController
  def index
  end

  def show
  end

  def new
    @issue = Issue.new
  end
end
