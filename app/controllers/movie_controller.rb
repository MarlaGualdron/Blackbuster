# frozen_string_literal: true

class MovieController < ApplicationController
  def index
    render json: movies, status: :ok
  end

  private

  def movies
    Movie.page(params[:page]).per(params[:page_size])
  end
end
