class TransactionRequestsController < ApplicationController
  before_action :set_transaction_request, only: [:show, :update, :destroy]

  # GET /transaction_requests
  # GET /transaction_requests.json
  def index
    @transaction_requests = TransactionRequest.all
  end

  # GET /transaction_requests/1
  # GET /transaction_requests/1.json
  def show
  end

  # POST /transaction_requests
  # POST /transaction_requests.json
  def create
    @transaction_request = TransactionRequest.new(transaction_request_params)

    if @transaction_request.save
      render :show, status: :created, location: @transaction_request
    else
      render json: @transaction_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /transaction_requests/1
  # PATCH/PUT /transaction_requests/1.json
  def update
    if @transaction_request.update(transaction_request_params)
      render :show, status: :ok, location: @transaction_request
    else
      render json: @transaction_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /transaction_requests/1
  # DELETE /transaction_requests/1.json
  def destroy
    @transaction_request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction_request
      @transaction_request = TransactionRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transaction_request_params
      params.require(:transaction_request).permit(:from_service_name, :request_type, :created_at, :user_email, :inc_id, :transaction_id, :amount, :action)
    end
end
