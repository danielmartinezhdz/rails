class Product < ApplicationRecord

	validates :name, presence: true
	validates :type_product, presence: true
	validates :description, presence: true
	validates :quantity, presence: true, numericality: { only_integer: true}

end
