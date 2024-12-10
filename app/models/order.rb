class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def calculate_totals
    self.subtotal = product.price * quantity
    self.tax = subtotal * 0.09
    self.total = subtotal + tax
  end
end
