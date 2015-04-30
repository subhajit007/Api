module Api
    class SmoothiesController < ApplicationController


        def index
            smoothies = Smoothie.all
            render json: smoothies, only: [:name, :id]
    end
        def show
     smoothie = Smoothie.find(params[:id])
     render json: smoothie, except: [:created_at, :updated_at], include: { fruits: { only: :name} }
   end

   def search
     smoothie = Smoothie.find_by_name(params[:s])
     render json: smoothie
   end
end
end



# def show
#     smoothies = Smoothie.find(params[:id])
# end