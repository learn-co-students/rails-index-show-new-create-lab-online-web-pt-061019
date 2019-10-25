class Coupon < ActiveRecord::Base
  def to_s 
    self.store.titlecase + "-" + self.coupon_code.upcase
  end
end