# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::PaymentMethodsTest < WhopSDK::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @whop.payment_methods.retrieve("payt_xxxxxxxxxxxxx", member_id: "mber_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::PaymentMethodRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        bank: WhopSDK::Models::PaymentMethodRetrieveResponse::Bank | nil,
        card: WhopSDK::Models::PaymentMethodRetrieveResponse::Card | nil,
        created_at: Time,
        payment_method_type: WhopSDK::PaymentMethodTypes
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.payment_methods.list(member_id: "mber_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::PaymentMethodListResponse
    end

    assert_pattern do
      row => {
        id: String,
        bank: WhopSDK::Models::PaymentMethodListResponse::Bank | nil,
        card: WhopSDK::Models::PaymentMethodListResponse::Card | nil,
        created_at: Time,
        payment_method_type: WhopSDK::PaymentMethodTypes
      }
    end
  end
end
