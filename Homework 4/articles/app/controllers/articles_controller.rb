class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(req_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def new
    @article = Article.new
  end

  def edit
    find_params
  end

  def show
    find_params
  end

  def update
    find_params
    if @article.update(req_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    find_params
    @article.destroy

    redirect_to articles_path
  end

  private

  def find_params
    @article = Article.find(params[:id])
  end

  def req_params
    params.require(:article).permit(:title, :body)
  end
end
