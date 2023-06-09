class CatsController < ApplicationController


    def index 

        @cats = Cat.all.order(:id)

        render :index 
    end 

    def show
        @cat = Cat.find(params[:id]) 

        render :show 
    end 

    def new 
        render :new
    end 

    
    def create
        @cat = Cats.new(cat_params)
        
        if @cat.save
            redirect_to cat_url(@cat)
        else
            render json: @cat.errors.full_messages, status: 422
        end
    end
    

    def edit
        @cat = Cat.find(params[:id])
        render :edit
    end

    def update
        @cat = Cat.find(params[:id]) 
       

        if @cat.update(cat_params)
            redirect_to cat_url(@cat)
        else
            render json: @cat.errors.full_messages, status: 422
        end
    end

    private 
        def cat_params
            params.require(:cat).permit(:name, :color, :birth_date, :sex)
        end 

end
