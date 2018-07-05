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

					text = ''
					if check1hour > 3 
						text = "3 transactions in 1 hour limit crossed"
					end
					if checkTotalAmountIn24Hours > 10000 
						text = text + "\nDebit Amount in 24 hours crossed 10,000"
					end
					


					render json: {status: 'success', details: text},status: :ok
				else
					render json: {status: 'error', message: 'transaction error'},status: :unprocessable_entry
				end
			end


			def check1hour

				transactions = TransactionRequest.where(updated_at: (Time.now - 1.hours)..Time.now).where(:user_email => params[:data][:data][:user_email])
				return transactions.count
			end

			def checkTotalAmountIn24Hours

				total = TransactionRequest.where(updated_at: (Time.now - 24.hours)..Time.now).where(:user_email => params[:data][:data][:user_email]).sum(:amount)
				return total
			end

			def sendMail(text)


			end
			# private
			# def transaction_params
			# 	params.permit(:transaction_type, :transactionId, :fromServiceName)
			# end
		end
	end
end