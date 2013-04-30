class ProductStocksController < InheritedResources::Base
  def new
    @product_stock = ProductStock.new
  end

  def create
    @product_stock = ProductStock.new(params[:product_stock])
    @product_stock.total_amount = @product_stock.price_per_quantity * @product_stock.quantity

    if @product_stock.save
      @product_stock.product.inc_qty(@product_stock.quantity)
    end
    redirect_to product_stocks_url
  end

end
