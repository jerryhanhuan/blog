class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def new
	end


	def create
		#render plain: params[:article].inspect
		#@article = Article.new(params[:article])
		@article = Article.new(article_params)
		@article.save
		redirect_to @article
		#redirect_to :action => 'show'
		#render plain: @article.inspect
	end



	def show
		@article = Article.find(params[:id])
	end

private
	def article_params
		params.require(:article).permit(:title,:text)
	end


end
