# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::SetupIntentsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.setup_intents.retrieve("sint_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::SetupIntent
    end

    assert_pattern do
      response => {
        id: String,
        checkout_configuration: WhopSDK::SetupIntent::CheckoutConfiguration | nil,
        company: WhopSDK::SetupIntent::Company | nil,
        created_at: Time,
        error_message: String | nil,
        member: WhopSDK::SetupIntent::Member | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        payment_token: WhopSDK::SetupIntent::PaymentToken | nil,
        status: WhopSDK::SetupIntentStatus
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.setup_intents.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::SetupIntentListResponse
    end

    assert_pattern do
      row => {
        id: String,
        checkout_configuration: WhopSDK::Models::SetupIntentListResponse::CheckoutConfiguration | nil,
        company: WhopSDK::Models::SetupIntentListResponse::Company | nil,
        created_at: Time,
        error_message: String | nil,
        member: WhopSDK::Models::SetupIntentListResponse::Member | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        payment_token: WhopSDK::Models::SetupIntentListResponse::PaymentToken | nil,
        status: WhopSDK::SetupIntentStatus
      }
    end
  end
end
