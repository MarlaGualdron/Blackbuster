# frozen_string_literal: true

class MovieController < ApplicationController
  def index
    render json: movies, status: :ok
  end

  def show
    render json: movie, status: :ok
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'ID not found' }, status: :not_found
  end
  private

  def movie
    Movie.find(params.require([:id]))
  end
  
  def movies
    Movie.page(params[:page]).per(params[:page_size])
  end
end
