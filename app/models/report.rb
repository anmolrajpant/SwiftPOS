class Report < ApplicationRecord
	belongs_to :sale
	belongs_to :product
end
