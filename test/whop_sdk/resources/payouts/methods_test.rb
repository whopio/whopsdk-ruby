# frozen_string_literal: true

require_relative "../../test_helper"

class WhopSDK::Test::Resources::Payouts::MethodsTest < WhopSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @whop.payouts.methods_.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::Payouts::MethodListResponse
    end

    assert_pattern do
      row => {
        id: String,
        account_reference: String | nil,
        created_at: Time,
        destination_currency: String,
        institution_name: String | nil,
        is_default: WhopSDK::Internal::Type::Boolean,
        nickname: String | nil,
        object: WhopSDK::Models::Payouts::MethodListResponse::Object,
        payer_name: String | nil,
        payout_destination: WhopSDK::Models::Payouts::MethodListResponse::PayoutDestination | nil,
        quote: WhopSDK::Models::Payouts::MethodListResponse::Quote | nil,
        status: WhopSDK::Models::Payouts::MethodListResponse::Status
      }
    end
  end
end
