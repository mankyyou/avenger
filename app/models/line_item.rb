class LineItem < ApplicationRecord
  belongs_to :gear, optional: true
  belongs_to :order, optional: true
  belongs_to :cart

  def total_price
    gear.price * quantity
  end
end
