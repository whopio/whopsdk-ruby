# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::PayoutsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @whop.payouts.create(account_id: "account_id", amount: 0, payout_method_id: "payout_method_id")

    assert_pattern do
      response => WhopSDK::Models::PayoutCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        amount: Float,
        created_at: Time,
        currency: String,
        estimated_arrival: Time | nil,
        fee_amount: Float,
        object: WhopSDK::Models::PayoutCreateResponse::Object,
        payer_name: String | nil,
        payout_token: WhopSDK::Models::PayoutCreateResponse::PayoutToken | nil,
        speed: WhopSDK::Models::PayoutCreateResponse::Speed,
        status: WhopSDK::Models::PayoutCreateResponse::Status
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.payouts.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::PayoutListResponse
    end

    assert_pattern do
      row => {
        id: String,
        amount: Float,
        created_at: Time,
        currency: String,
        estimated_arrival: Time | nil,
        fee_amount: Float,
        object: WhopSDK::Models::PayoutListResponse::Object,
        payer_name: String | nil,
        payout_request_id: String | nil,
        payout_token: WhopSDK::Models::PayoutListResponse::PayoutToken | nil,
        speed: WhopSDK::Models::PayoutListResponse::Speed,
        status: WhopSDK::Models::PayoutListResponse::Status
      }
    end
  end
end
