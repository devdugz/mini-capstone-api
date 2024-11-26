class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def calculate_totals
    self.subtotal = product.price * quantity
    self.tax = subtotal * 0.09
    self.total = subtotal + tax
  end
end
