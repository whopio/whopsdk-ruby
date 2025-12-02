# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::PaymentTokensTest < WhopSDK::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @whop.payment_tokens.retrieve("payt_xxxxxxxxxxxxx", member_id: "mber_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::PaymentTokenRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        card: WhopSDK::Models::PaymentTokenRetrieveResponse::Card | nil,
        created_at: Time,
        payment_method_type: WhopSDK::PaymentMethodTypes
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.payment_tokens.list(member_id: "mber_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::PaymentTokenListResponse
    end

    assert_pattern do
      row => {
        id: String,
        card: WhopSDK::Models::PaymentTokenListResponse::Card | nil,
        created_at: Time,
        payment_method_type: WhopSDK::PaymentMethodTypes
      }
    end
  end
end
