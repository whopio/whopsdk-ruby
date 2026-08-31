# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::CheckoutConfigurationsTest < WhopSDK::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @whop.checkout_configurations.create

    assert_pattern do
      response => WhopSDK::Models::CheckoutConfigurationCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        created_at: String,
        mode: WhopSDK::Models::CheckoutConfigurationCreateResponse::Mode,
        updated_at: String,
        affiliate_code: String | nil,
        currency: String | nil,
        effective_payment_method_configuration: WhopSDK::Models::CheckoutConfigurationCreateResponse::EffectivePaymentMethodConfiguration | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        payment_method_configuration: WhopSDK::Models::CheckoutConfigurationCreateResponse::PaymentMethodConfiguration | nil,
        plan: WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan | nil,
        purchase_url: String | nil,
        redirect_url: String | nil,
        three_ds_level: WhopSDK::Models::CheckoutConfigurationCreateResponse::ThreeDSLevel | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.checkout_configurations.retrieve("id")

    assert_pattern do
      response => WhopSDK::Models::CheckoutConfigurationRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        created_at: String,
        mode: WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Mode,
        updated_at: String,
        affiliate_code: String | nil,
        currency: String | nil,
        effective_payment_method_configuration: WhopSDK::Models::CheckoutConfigurationRetrieveResponse::EffectivePaymentMethodConfiguration | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        payment_method_configuration: WhopSDK::Models::CheckoutConfigurationRetrieveResponse::PaymentMethodConfiguration | nil,
        plan: WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan | nil,
        purchase_url: String | nil,
        redirect_url: String | nil,
        three_ds_level: WhopSDK::Models::CheckoutConfigurationRetrieveResponse::ThreeDSLevel | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.checkout_configurations.list(account_id: "account_id")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::CheckoutConfigurationListResponse
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String,
        created_at: String,
        mode: WhopSDK::Models::CheckoutConfigurationListResponse::Mode,
        updated_at: String,
        affiliate_code: String | nil,
        currency: String | nil,
        effective_payment_method_configuration: WhopSDK::Models::CheckoutConfigurationListResponse::EffectivePaymentMethodConfiguration | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        payment_method_configuration: WhopSDK::Models::CheckoutConfigurationListResponse::PaymentMethodConfiguration | nil,
        plan: WhopSDK::Models::CheckoutConfigurationListResponse::Plan | nil,
        purchase_url: String | nil,
        redirect_url: String | nil,
        three_ds_level: WhopSDK::Models::CheckoutConfigurationListResponse::ThreeDSLevel | nil
      }
    end
  end
end
