class CouponsController < ApplicationController 

    def index 
        @coupons = Coupon.all # present all the coupons 
    end 

    def show 
        @coupon = Coupon.find(params[:id]) # present a certain coupon
    end 

    def new # form for a new coupon 
    end 

    def create
      @coupon = Coupon.new                                  # Create an object
      @coupon[:coupon_code]= params[:coupon][:coupon_code]  # add attribute 'coupon_code' 
      @coupon[:store]= params[:coupon][:store]              # add attribute 'store'
      @coupon.save                                          # save the created coupon
      redirect_to coupon_path(@coupon)                      # Redirect to the coupon just created
    end 
end 