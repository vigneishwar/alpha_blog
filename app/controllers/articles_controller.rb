# frozen_string_literal: true

class ArticlesController < ApplicationController # rubocop:disable Style/Documentation
  def show
    @article = Article.find(
      params[:id]
    )
  end
end
