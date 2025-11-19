# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::CheckoutConfigurationsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whop.checkout_configurations.create(company_id: "biz_xxxxxxxxxxxxxx", mode: :setup)

    assert_pattern do
      response => WhopSDK::CheckoutConfiguration
    end

    assert_pattern do
      response => {
        id: String,
        affiliate_code: String | nil,
        company_id: String,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        mode: WhopSDK::CheckoutConfiguration::Mode,
        payment_method_configuration: WhopSDK::CheckoutConfiguration::PaymentMethodConfiguration | nil,
        plan: WhopSDK::CheckoutConfiguration::Plan | nil,
        purchase_url: String,
        redirect_url: String | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.checkout_configurations.retrieve("ch_xxxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::CheckoutConfiguration
    end

    assert_pattern do
      response => {
        id: String,
        affiliate_code: String | nil,
        company_id: String,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        mode: WhopSDK::CheckoutConfiguration::Mode,
        payment_method_configuration: WhopSDK::CheckoutConfiguration::PaymentMethodConfiguration | nil,
        plan: WhopSDK::CheckoutConfiguration::Plan | nil,
        purchase_url: String,
        redirect_url: String | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.checkout_configurations.list(company_id: "biz_xxxxxxxxxxxxxx")

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
        affiliate_code: String | nil,
        company_id: String,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        mode: WhopSDK::Models::CheckoutConfigurationListResponse::Mode,
        payment_method_configuration: WhopSDK::Models::CheckoutConfigurationListResponse::PaymentMethodConfiguration | nil,
        plan: WhopSDK::Models::CheckoutConfigurationListResponse::Plan | nil,
        purchase_url: String,
        redirect_url: String | nil
      }
    end
  end
end
