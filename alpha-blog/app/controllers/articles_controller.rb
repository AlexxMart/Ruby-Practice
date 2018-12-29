class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :show, :destroy]


  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    #render plain: params[:article].inspect // this will show the paarams of the HTTP Request
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = 'The article was created successfully'
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def update
    if @article.update(article_params)
      flash[:update] = 'The article was updated successfully'
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @article.destroy
    redirect_to articles_path
    flash[:notice] = "Article was successfully deleted"
  end

  private
    def article_params
      params.require(:article).permit(:title, :description)
    end

    def set_article
      @article = Article.find(params[:id])
    end
end