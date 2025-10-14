# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::CheckoutConfigurationsTest < Whopsdk::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @whop.checkout_configurations.create

    assert_pattern do
      response => Whopsdk::CheckoutConfiguration
    end

    assert_pattern do
      response => {
        id: String,
        affiliate_code: String,
        company_id: String,
        metadata: ^(Whopsdk::Internal::Type::HashOf[Whopsdk::Internal::Type::Unknown]),
        plan: Whopsdk::CheckoutConfiguration::Plan,
        purchase_url: String,
        redirect_url: String
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.checkout_configurations.retrieve("ch_xxxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::CheckoutConfiguration
    end

    assert_pattern do
      response => {
        id: String,
        affiliate_code: String,
        company_id: String,
        metadata: ^(Whopsdk::Internal::Type::HashOf[Whopsdk::Internal::Type::Unknown]),
        plan: Whopsdk::CheckoutConfiguration::Plan,
        purchase_url: String,
        redirect_url: String
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.checkout_configurations.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::Models::CheckoutConfigurationListResponse
    end

    assert_pattern do
      row => {
        id: String,
        affiliate_code: String,
        company_id: String,
        metadata: ^(Whopsdk::Internal::Type::HashOf[Whopsdk::Internal::Type::Unknown]),
        plan: Whopsdk::Models::CheckoutConfigurationListResponse::Plan,
        purchase_url: String,
        redirect_url: String
      }
    end
  end
end
