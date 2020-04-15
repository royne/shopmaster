class ShopController < CompaniesController
  before_action :set_company, only: [:index]

  def index
    @categories = Category.all
    @products = Product.all
    render "shop/basic/shop"    
  end
  
  private
    def set_company
      @company = Company.find(params[:company_id])
    end
end