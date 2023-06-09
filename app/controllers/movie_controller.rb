# frozen_string_literal: true

class MovieController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :require_admin, only: [:create, :update]

  def index
    render json: movies, status: :ok
  end

  def show
    render json: movie, status: :ok
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'ID not found' }, status: :not_found
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save!  
      render json: { message: "Movie created" }, status: :ok
    end
  end

  def update
    @update_movie = Movie.find(params[:id])
    @update_movie.update!(update_params)
    render json: @update_movie
  end

  private

  def movie
    Movie.find(params.require([:id]))
  end
  
  def movies
    Movie.page(params[:page]).per(params[:page_size])
  end

  def movie_params
    params.permit(:title, :description, :release, :genre, :quantity, :rent_price, :image)
  end

  def update_params
    params.require(:movie).permit(:title, :description, :release, :genre, :quantity, :rent_price)
  end
end
