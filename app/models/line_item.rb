class LineItem < ActiveRecord::Base
	belongs_to :product 
	belongs_to :transaction 
	belongs_to :user
end
