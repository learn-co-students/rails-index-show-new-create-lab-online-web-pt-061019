class Coupon < ActiveRecord::Base
  def to_s 
    self.coupon_code.upcase + "-" + self.store.titlecase
  end
end