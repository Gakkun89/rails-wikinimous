class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  private

  def article_params
    params.require(:article).permit(:content, :title)
  end
  def set_article
    @article = Article.find(params[:id])
  end
end
