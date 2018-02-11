class ArticlesController < ApplicationController
	before_action :authenticate_user!, except: :index

	def index
		@articles = Article.all
		render json: @articles
	end

	def create
		article = Article.create(
			title: params[:title],
			body: params[:body]
			)
		render json: {article: article}
	end
end
