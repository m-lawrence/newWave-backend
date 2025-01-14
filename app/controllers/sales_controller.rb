class SalesController < ApplicationController
    def index
        sales = Sale.all 
        render json: sales
    end

    def create 
        sale = Sale.create(sale_params)
        render json: sale
    end

    def update
        sale = Sale.find(params[:id])
        sale.update(sale_params)
    end

    def destroy
        sale = Sale.find(params[:id])
        sale.destroy
    end

# private
    def sale_params
        params.require(:sale).permit(:user_id, :price, :listing_id, :sale_type)
    end
end
