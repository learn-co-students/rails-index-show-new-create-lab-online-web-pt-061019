class CouponsController < ApplicationController
  def index
    @coupons = Coupons.all
    :index
  end

  def new
    @coupon = Coupon.new
    :new
  end

  def show
    @coupon = Coupon.find_by(params[:id])
    :show
  end

  def create
  end
end