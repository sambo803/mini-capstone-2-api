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

  def show
    p "*" * 88
    p params["id"]
    p "*" * 88

    product = Product.find_by(id: 3)
    render json: product.as_json
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = "Oile_heater_2"
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    product.save
    render json: product.as_json
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "product has been destroyed" }
  end
end
