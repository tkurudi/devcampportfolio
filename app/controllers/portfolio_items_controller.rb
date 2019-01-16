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
      def edit
        @portfolio_item = PortfolioItem.find(params[:id])

      end
      def update
        @portfolio_item = PortfolioItem.find(params[:id])
        respond_to do |format|
          if @portfolio_item.update(params.require(:portfolio_item).permit(:title, :subtitle, :thumb_image, :main_image, :body))
            format.html { redirect_to portfolio_items_path, notice: 'Portfolio item successfully edited.' }
            format.json { render :show, status: :ok, location: @portfolio_item }
          else
            format.html { render :edit }
            format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
          end
        end
      end
      def show
        @portfolio_item = PortfolioItem.find(params[:id])
      end
      def destroy
        
        @portfolio_item = PortfolioItem.find(params[:id])
        # @portfolio_item = PortfolioItem.find(1)
        
        @portfolio_item.destroy
        respond_to do |format|
          format.html { redirect_to portfolio_items_path, notice: 'Portfolio item was successfully destroyed.' }
          format.json { head :no_content }
        end
      end
end
