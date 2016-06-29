class PortfolioController < ApplicationController
  def index
  end

  def show
    @project = params[:id]
  end

end
