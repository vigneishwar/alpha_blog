# frozen_string_literal: true

class ArticlesController < ApplicationController # rubocop:disable Style/Documentation
  def show
    @article = Article.find(
      params[:id]
    )
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      flash[:notice] = 'Succesfully Created an Article'
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end
end
