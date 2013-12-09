class LineItem < ActiveRecord::Base
	belongs_to :product 
	belongs_to :transaction 
	#belongs_to :user
	belongs_to :cart 

	# scope :in_cart, -> {where transaction_id: nil}
 #  scope :checked_out, -> {where "transaction_id IS NOT NULL" }
  
end
