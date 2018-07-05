require 'test_helper'

class TrnsactionDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trnsaction_datum = trnsaction_data(:one)
  end

  test "should get index" do
    get trnsaction_data_url, as: :json
    assert_response :success
  end

  test "should create trnsaction_datum" do
    assert_difference('TrnsactionDatum.count') do
      post trnsaction_data_url, params: { trnsaction_datum: { action: @trnsaction_datum.action, amount: @trnsaction_datum.amount, created_at: @trnsaction_datum.created_at, from_service_name: @trnsaction_datum.from_service_name, inc_id: @trnsaction_datum.inc_id, request_type: @trnsaction_datum.request_type, transaction_id: @trnsaction_datum.transaction_id, user_email: @trnsaction_datum.user_email } }, as: :json
    end

    assert_response 201
  end

  test "should show trnsaction_datum" do
    get trnsaction_datum_url(@trnsaction_datum), as: :json
    assert_response :success
  end

  test "should update trnsaction_datum" do
    patch trnsaction_datum_url(@trnsaction_datum), params: { trnsaction_datum: { action: @trnsaction_datum.action, amount: @trnsaction_datum.amount, created_at: @trnsaction_datum.created_at, from_service_name: @trnsaction_datum.from_service_name, inc_id: @trnsaction_datum.inc_id, request_type: @trnsaction_datum.request_type, transaction_id: @trnsaction_datum.transaction_id, user_email: @trnsaction_datum.user_email } }, as: :json
    assert_response 200
  end

  test "should destroy trnsaction_datum" do
    assert_difference('TrnsactionDatum.count', -1) do
      delete trnsaction_datum_url(@trnsaction_datum), as: :json
    end

    assert_response 204
  end
end
