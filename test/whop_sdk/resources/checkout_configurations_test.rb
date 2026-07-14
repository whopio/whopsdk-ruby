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
        company_id: String,
        created_at: String,
        mode: WhopSDK::Models::CheckoutConfigurationCreateResponse::Mode,
        updated_at: String,
        affiliate_code: String | nil,
        currency: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        payment_method_configuration: WhopSDK::Models::CheckoutConfigurationCreateResponse::PaymentMethodConfiguration | nil,
        plan: WhopSDK::Models::CheckoutConfigurationCreateResponse::Plan | nil,
        purchase_url: String | nil,
        redirect_url: String | nil,
        three_ds_level: String | nil
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
        company_id: String,
        created_at: String,
        mode: WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Mode,
        updated_at: String,
        affiliate_code: String | nil,
        currency: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        payment_method_configuration: WhopSDK::Models::CheckoutConfigurationRetrieveResponse::PaymentMethodConfiguration | nil,
        plan: WhopSDK::Models::CheckoutConfigurationRetrieveResponse::Plan | nil,
        purchase_url: String | nil,
        redirect_url: String | nil,
        three_ds_level: String | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.checkout_configurations.list(company_id: "company_id")

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
        company_id: String,
        created_at: String,
        mode: WhopSDK::Models::CheckoutConfigurationListResponse::Mode,
        updated_at: String,
        affiliate_code: String | nil,
        currency: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        payment_method_configuration: WhopSDK::Models::CheckoutConfigurationListResponse::PaymentMethodConfiguration | nil,
        plan: WhopSDK::Models::CheckoutConfigurationListResponse::Plan | nil,
        purchase_url: String | nil,
        redirect_url: String | nil,
        three_ds_level: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.checkout_configurations.delete("id")

    assert_pattern do
      response => nil
    end
  end
end
