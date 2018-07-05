require 'test_helper'

class TransactionRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transaction_request = transaction_requests(:one)
  end

  test "should get index" do
    get transaction_requests_url, as: :json
    assert_response :success
  end

  test "should create transaction_request" do
    assert_difference('TransactionRequest.count') do
      post transaction_requests_url, params: { transaction_request: { action: @transaction_request.action, amount: @transaction_request.amount, created_at: @transaction_request.created_at, from_service_name: @transaction_request.from_service_name, inc_id: @transaction_request.inc_id, request_type: @transaction_request.request_type, transaction_id: @transaction_request.transaction_id, user_email: @transaction_request.user_email } }, as: :json
    end

    assert_response 201
  end

  test "should show transaction_request" do
    get transaction_request_url(@transaction_request), as: :json
    assert_response :success
  end

  test "should update transaction_request" do
    patch transaction_request_url(@transaction_request), params: { transaction_request: { action: @transaction_request.action, amount: @transaction_request.amount, created_at: @transaction_request.created_at, from_service_name: @transaction_request.from_service_name, inc_id: @transaction_request.inc_id, request_type: @transaction_request.request_type, transaction_id: @transaction_request.transaction_id, user_email: @transaction_request.user_email } }, as: :json
    assert_response 200
  end

  test "should destroy transaction_request" do
    assert_difference('TransactionRequest.count', -1) do
      delete transaction_request_url(@transaction_request), as: :json
    end

    assert_response 204
  end
end
