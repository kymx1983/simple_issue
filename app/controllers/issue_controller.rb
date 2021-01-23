class IssueController < ApplicationController
  def index
  end

  def show
  end

  def new
    @issue = Issue.new
  end

  def create

    @issue = Issue.new
    @issue.title = params[:title]
    @issue.content = params[:content]
    @issue.limit_date = params[:limit_date]
    @issue.status = 0
    # @issue.user_id = @current_user.id

    if @issue.save
      flash[:notice] = "「#{@issue.title}」を追加しました。"
      redirect_to('/issue/index')
    else
      flash[:alert] = "入力内容に誤りがあります。ご確認ください。"
      render("issue/new")
    end
  end
end
