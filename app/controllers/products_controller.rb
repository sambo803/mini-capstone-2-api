class ProductsController < ApplicationController
  def index
    @products = Product.all
    #render json: products.as_json(methods: [:is_discounted?, :tax, :total])
    render template: "products/index"
  end

  def create
    @product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      quantity: params[:quantity],
      supplier_id: params[:supplier_id],
    )
    if @product.save
      render template: "products/show"
    else
      render json: @product.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
    # render json: product.as_json(methods: [:is_discounted?, :tax, :total])
    render template: "products/show"
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.save
    render json: product.as_json
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "product has been removed" }
  end
end
