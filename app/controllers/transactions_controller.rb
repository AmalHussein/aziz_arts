class TransactionsController < ApplicationController

	def new
	end

	def create
	  # Amount in cents
	  @amount = current_user.line_items.in_cart.sum {|item| item.product.price * 100 }.to_i

	  customer = Stripe::Customer.create(
	    email: current_user.email,
	    card: params[:stripeToken]
	  )

	  stripe_transaction = Stripe::Charge.create(
	    customer: customer.id,
	    amount: @amount,
	    description: 'Rails Stripe customer',
	    currency: 'usd'
	  )

	transaction = Transaction.create(total_price: @amount)
	current_user.line_items.in_cart.each do |cart_item|
		cart_item.transaction = transaction
		cart_item.save
	end

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to orders_path
	end

end
