class ArticlesController < ApplicationController
	
	def index
		@articles = Article.all #pull all articles from db
	end

	def show
		@article = Article.find(params[:id])
	end

	#/articles/new
	#responsible for capturing info (get request)
	def new
		@article = Article.new
	end

	#this is not linked directly to any URL, gets into from new
	#responsible for create new instance of article (post)
	def create
		@article = Article.new(article_params)
		@article.save
		redirect_to articles_path
	end

    private

	def article_params
		params.require(:article).permit(:title, :body, :author)
	end

end
