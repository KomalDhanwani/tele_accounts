class DailySellingsController < InheritedResources::Base

  def new
    @daily_selling = DailySelling.new
  end

  def create
    @daily_selling = DailySelling.new(params[:daily_selling])
    @daily_selling.total_amount = @daily_selling.price_per_quantity * @daily_selling.quantity
    if @daily_selling.save
      @daily_selling.product.dec_qty(@daily_selling.quantity)
    end
    redirect_to daily_sellings_url
  end
end
