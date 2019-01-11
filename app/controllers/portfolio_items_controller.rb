class PortfolioItemsController < ApplicationController
    def index 
        @portfolio_items = PortfolioItem.all 
    end

    def new
        @portfolio_item = PortfolioItem.new
    end
    def create
        @portfolio_item = PortfolioItem.new(params.require(:portfolio_item).permit(:title, :subtitle, :thumb_image, :main_image, :body))
    
        respond_to do |format|
          if @portfolio_item.save
            format.html { redirect_to portfolio_items_path, notice: 'Your portfilio item is now live.' }
            format.json { render :show, status: :created, location: @portfolio_item }
          else
            format.html { render :new }
            format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
          end
        end
      end
end
