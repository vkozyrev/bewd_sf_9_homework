class ArticlesController < ApplicationController

  def new
    @article = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
  @article = Article.find(params[:id])
  end

  def create #gets info from user; not linked to URL
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  def update
  @article = Article.find(params[:id])

  if @article.update(article_params)
    redirect_to @article
  else
    render 'edit'
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :author)
  end

end
