class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end

  def create
    product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      image_url: params[:image_url],
    )
    product.save
    render json: product.as_json
  end
end

# t.string "name"
# t.string "description"
# t.integer "price"
# t.string "image_url"
