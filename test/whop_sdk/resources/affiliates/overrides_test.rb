# frozen_string_literal: true

require_relative "../../test_helper"

class WhopSDK::Test::Resources::Affiliates::OverridesTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @whop.affiliates.overrides.create(
        "aff_xxxxxxxxxxxxxx",
        body: {id: "id", commission_value: 6.9, override_type: :standard, plan_id: "plan_xxxxxxxxxxxxx"}
      )

    assert_pattern do
      response => WhopSDK::Models::Affiliates::OverrideCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        applies_to_payments: WhopSDK::Affiliates::AffiliateAppliesToPayments | nil,
        applies_to_products: WhopSDK::Affiliates::AffiliateAppliesToProducts | nil,
        checkout_direct_link: String | nil,
        commission_type: WhopSDK::Affiliates::AffiliatePayoutTypes,
        commission_value: Float,
        override_type: WhopSDK::Affiliates::AffiliateOverrideRoles,
        plan_id: String | nil,
        product_direct_link: String | nil,
        product_id: String | nil,
        revenue_basis: WhopSDK::Affiliates::AffiliateRevenueBases | nil,
        total_referral_earnings_usd: Float
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @whop.affiliates.overrides.retrieve("override_id", id: "aff_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::Affiliates::OverrideRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        applies_to_payments: WhopSDK::Affiliates::AffiliateAppliesToPayments | nil,
        applies_to_products: WhopSDK::Affiliates::AffiliateAppliesToProducts | nil,
        checkout_direct_link: String | nil,
        commission_type: WhopSDK::Affiliates::AffiliatePayoutTypes,
        commission_value: Float,
        override_type: WhopSDK::Affiliates::AffiliateOverrideRoles,
        plan_id: String | nil,
        product_direct_link: String | nil,
        product_id: String | nil,
        revenue_basis: WhopSDK::Affiliates::AffiliateRevenueBases | nil,
        total_referral_earnings_usd: Float
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @whop.affiliates.overrides.update("override_id", id: "aff_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::Affiliates::OverrideUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        applies_to_payments: WhopSDK::Affiliates::AffiliateAppliesToPayments | nil,
        applies_to_products: WhopSDK::Affiliates::AffiliateAppliesToProducts | nil,
        checkout_direct_link: String | nil,
        commission_type: WhopSDK::Affiliates::AffiliatePayoutTypes,
        commission_value: Float,
        override_type: WhopSDK::Affiliates::AffiliateOverrideRoles,
        plan_id: String | nil,
        product_direct_link: String | nil,
        product_id: String | nil,
        revenue_basis: WhopSDK::Affiliates::AffiliateRevenueBases | nil,
        total_referral_earnings_usd: Float
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.affiliates.overrides.list("aff_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::Affiliates::OverrideListResponse
    end

    assert_pattern do
      row => {
        id: String,
        applies_to_payments: WhopSDK::Affiliates::AffiliateAppliesToPayments | nil,
        applies_to_products: WhopSDK::Affiliates::AffiliateAppliesToProducts | nil,
        checkout_direct_link: String | nil,
        commission_type: WhopSDK::Affiliates::AffiliatePayoutTypes,
        commission_value: Float,
        override_type: WhopSDK::Affiliates::AffiliateOverrideRoles,
        plan_id: String | nil,
        product_direct_link: String | nil,
        product_id: String | nil,
        revenue_basis: WhopSDK::Affiliates::AffiliateRevenueBases | nil,
        total_referral_earnings_usd: Float
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @whop.affiliates.overrides.delete("override_id", id: "aff_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end
end
