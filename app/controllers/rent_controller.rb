class RentController < ApplicationController
    def index
        render json: rents, status: :ok
      end
    
      def show
        render json: rent, status: :ok
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'ID not found' }, status: :not_found
      end
    
      def create
        @rent = Rent.new(rent_params)
        if @rent.save!  
          render json: { message: "Rent created" }, status: :ok
        end
      end

    private
      def rent
        Rent.find(params.require([:id]))
      end
      
      def rents
        Rent.page(params[:page]).per(params[:page_size])
      end

      def rent_params
        params.require(:rent).permit(:from, :to, :user_id, :movie_id, :returned)
    end
    
end
