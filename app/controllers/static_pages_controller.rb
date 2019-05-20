class StaticPagesController < ApplicationController
  include ProductsHelper

  def home
    @q = Product.ransack(params[:q])
    @load_products = load_products
    @cur_slide_items = load_trend_items.take(Settings.products.cur_slide_items)
    @trend_items = load_trend_items.drop(Settings.products.cur_slide_items)
    @new_products = load_new_product
    @products = @q.result().includes(:category).paginate(page: params[:page],
      per_page: Settings.pages.per_page9)
    @order_item = current_order.order_items.new if logged_in?
    # byebug
  end
end
