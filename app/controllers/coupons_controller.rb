class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    @coupon = Coupon.new(params[:coupon_code])
  end

  def create
    @coupon = Coupon.new(params[:coupon_code])
    # @coupon.coupon_code = params[:coupon_code]
    # @coupon.store = params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  def update
    @coupon = Coupon.find(params[:id])
    @coupon.update(params[:coupon_code, :store])
    redirect_to coupon_path(@coupon)
  end

end
