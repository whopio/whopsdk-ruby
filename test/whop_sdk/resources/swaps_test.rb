# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::SwapsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @whop.swaps.create(
        account_id: "account_id",
        amount: "amount",
        from_token: "from_token",
        to_token: "to_token"
      )

    assert_pattern do
      response => WhopSDK::Models::SwapCreateResponse
    end

    assert_pattern do
      response => {
        account_id: String,
        object: WhopSDK::Models::SwapCreateResponse::Object,
        status: String,
        amount_out_expected: String | nil,
        amount_out_min: String | nil,
        rate: String | nil,
        to_chain: String | nil
      }
    end
  end

  def test_create_quote_required_params
    skip("Mock server tests are disabled")

    response = @whop.swaps.create_quote(amount: "amount", from_token: "from_token", to_token: "to_token")

    assert_pattern do
      response => WhopSDK::Models::SwapCreateQuoteResponse
    end

    assert_pattern do
      response => {
        amount_in: String,
        amount_out: String,
        fee_bps: Integer,
        from_token: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]),
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]),
        object: WhopSDK::Models::SwapCreateQuoteResponse::Object,
        rate: String,
        to_token: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]),
        amount_out_min: String | nil,
        bridge_fee: String | nil,
        estimated_duration_seconds: Integer | nil,
        from_address: String | nil,
        requires_token_approval: WhopSDK::Internal::Type::Boolean | nil,
        to_address: String | nil
      }
    end
  end
end
