module Api
	module V1
		class TransactionController < ApplicationController

			# def index
			# 	transactions = TransactionDatum.order('created_at DESC');
			# 	render json: {status: 'success', message: 'transaction submitted', data: transactions},status: :ok
			# end


			# def show
			# 	# param = TransactionDatum.find(params[:id])
			# 	render json: {status: 'success', message: 'transaction submitted', data: params[:id]},status: :ok
			# end


			def create

				
				# transaction = TransactionDatum.new(transaction_params

				transactionDetails = TransactionRequest.new(:from_service_name => params[:from_service_name], :request_type => params[:data][:type], :created_at => params[:data][:data][:created_at], :user_email => params[:data][:data][:user_email], :inc_id => params[:data][:data][:inc_id], :transaction_id => params[:data][:data][:transaction_id], :amount => params[:data][:data][:amount], :action => params[:data][:data][:action])
				if transactionDetails.save
					render json: {status: 'success', details: transactionDetails},status: :ok
				else
					render json: {status: 'error', message: 'transaction error'},status: :unprocessable_entry
				end
			end


			private
			# def transaction_params
			# 	params.permit(:transaction_type, :transactionId, :fromServiceName)
			# end
		end
	end
end