class ArticlesController < ApplicationController

  layout "content_authors"

  def index
    @articles = Article.all
  end

  def show

  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(post_params)

    if @article.save
      flash[:notice] = "Your article has been published"
      redirect_to articles_path
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  private

  def post_params
    params.require(:article).permit(:title, :body)
  end

end
