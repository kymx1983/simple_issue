class IssueController < ApplicationController
  def index
    @issues = Issue.all
  end

  def show
    @issue = Issue.find_by(id: params[:id])
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

  def edit
    @issue = Issue.find_by(id: params[:id])
  end

  def update
    @issue = Issue.find_by(id: params[:id])

    @issue.title = params[:title]
    @issue.content = params[:content]
    @issue.limit_date = params[:limit_date]
    @issue.status = 0
    # @issue.user_id = @current_user.id

    if @issue.save
      flash[:notice] = "「#{@issue.title}」を更新しました。"
      redirect_to('/issue/index')
    else
      flash[:alert] = "入力内容に誤りがあります。ご確認ください。"
      render("issue/new")
    end
  end

  def destroy
    @issue = Issue.find_by(id: params[:id])
    @issue.destroy

    flash[:notice] = "「#{@issue.title}」を削除しました。"

    redirect_to("/issue/index")
  end
end
