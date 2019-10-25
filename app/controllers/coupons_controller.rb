class CouponsController < ApplicationController

  def new
    @coupon = Coupon.create!(params[:coupon_code], params[:store])
    @coupon.save
  end
  
end