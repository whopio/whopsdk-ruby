# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::SetupIntentsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.setup_intents.retrieve("id")

    assert_pattern do
      response => WhopSDK::SetupIntent
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String | nil,
        checkout_configuration_id: String | nil,
        client_secret: String | nil,
        created_at: String,
        last_setup_error: WhopSDK::SetupIntent::LastSetupError | nil,
        member_id: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        payment_instrument: WhopSDK::SetupIntent::PaymentInstrument | nil,
        payment_method_id: String | nil,
        payment_method_type: WhopSDK::PaymentMethodTypes | nil,
        return_url: String | nil,
        status: WhopSDK::SetupIntent::Status,
        three_ds_verified: WhopSDK::Internal::Type::Boolean,
        updated_at: String,
        user: WhopSDK::SetupIntent::User | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.setup_intents.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::SetupIntent
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String | nil,
        checkout_configuration_id: String | nil,
        client_secret: String | nil,
        created_at: String,
        last_setup_error: WhopSDK::SetupIntent::LastSetupError | nil,
        member_id: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        payment_instrument: WhopSDK::SetupIntent::PaymentInstrument | nil,
        payment_method_id: String | nil,
        payment_method_type: WhopSDK::PaymentMethodTypes | nil,
        return_url: String | nil,
        status: WhopSDK::SetupIntent::Status,
        three_ds_verified: WhopSDK::Internal::Type::Boolean,
        updated_at: String,
        user: WhopSDK::SetupIntent::User | nil
      }
    end
  end
end
