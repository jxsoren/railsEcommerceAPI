class Product < ApplicationRecord

  # Validations
  validates :name, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :stock_quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :sku, presence: true, uniqueness: true
  validates :is_active, inclusion: { in: [true, false] }
  validates :weight, numericality: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }

end
