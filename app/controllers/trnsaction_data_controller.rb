class TrnsactionDataController < ApplicationController
  before_action :set_trnsaction_datum, only: [:show, :update, :destroy]

  # GET /trnsaction_data
  # GET /trnsaction_data.json
  def index
    @trnsaction_data = TrnsactionDatum.all
  end

  # GET /trnsaction_data/1
  # GET /trnsaction_data/1.json
  def show
  end

  # POST /trnsaction_data
  # POST /trnsaction_data.json
  def create
    @trnsaction_datum = TrnsactionDatum.new(trnsaction_datum_params)

    if @trnsaction_datum.save
      render :show, status: :created, location: @trnsaction_datum
    else
      render json: @trnsaction_datum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trnsaction_data/1
  # PATCH/PUT /trnsaction_data/1.json
  def update
    if @trnsaction_datum.update(trnsaction_datum_params)
      render :show, status: :ok, location: @trnsaction_datum
    else
      render json: @trnsaction_datum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trnsaction_data/1
  # DELETE /trnsaction_data/1.json
  def destroy
    @trnsaction_datum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trnsaction_datum
      @trnsaction_datum = TrnsactionDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trnsaction_datum_params
      params.require(:trnsaction_datum).permit(:from_service_name, :request_type, :created_at, :user_email, :inc_id, :transaction_id, :amount, :action)
    end
end
