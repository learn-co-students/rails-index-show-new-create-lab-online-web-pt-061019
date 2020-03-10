class CreateCoupons < ActiveRecord::Migration[5.0]
  def change
    create_table :coupons do |t| # created a table called 'coupons'
      t.string :coupon_code      # created attributes called 'coupon_code' and 'store'
      t.string :store
    end
  end
end
