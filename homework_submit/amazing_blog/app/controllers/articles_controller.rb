class ArticlesController < ApplicationController


  def index
    @articles = Article.all #pull all articles from database
  end

  def show
    @article = Article.find(params[:id])
  end


  #/articles/new
  #responsible for capturing info (get request)
  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

#this is not linked directly to any url. Get info from new
#responsible for creating new instance of article (post)
  def create
  @article = Article.new(params.require(:article).permit(:title, :body))

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

def update
  @article = Article.find(params[:id])

  if @article.update(article_params)
    redirect_to @article
  else
    render 'edit'
  end
end

def destroy
  @article = Article.find(params[:id])
  @article.destroy

  redirect_to articles_path
end


private

def article_params
  params.require(:article).permit(:title, :body, :author)
end


end
