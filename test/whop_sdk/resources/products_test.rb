# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::ProductsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whop.products.create(company_id: "biz_xxxxxxxxxxxxxx", title: "title")

    assert_pattern do
      response => WhopSDK::Product
    end

    assert_pattern do
      response => {
        id: String,
        business_type: WhopSDK::BusinessTypes | nil,
        company: WhopSDK::Product::Company,
        created_at: Time,
        custom_cta: WhopSDK::CustomCta,
        custom_cta_url: String | nil,
        custom_statement_descriptor: String | nil,
        description: String | nil,
        external_identifier: String | nil,
        global_affiliate_percentage: Float | nil,
        global_affiliate_status: WhopSDK::GlobalAffiliateStatus,
        headline: String | nil,
        industry_type: WhopSDK::IndustryTypes | nil,
        member_affiliate_percentage: Float | nil,
        member_affiliate_status: WhopSDK::GlobalAffiliateStatus,
        member_count: Integer,
        owner_user: WhopSDK::Product::OwnerUser,
        product_tax_code: WhopSDK::Product::ProductTaxCode | nil,
        published_reviews_count: Integer,
        route: String,
        title: String,
        updated_at: Time,
        verified: WhopSDK::Internal::Type::Boolean,
        visibility: WhopSDK::Visibility
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.products.retrieve("prod_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Product
    end

    assert_pattern do
      response => {
        id: String,
        business_type: WhopSDK::BusinessTypes | nil,
        company: WhopSDK::Product::Company,
        created_at: Time,
        custom_cta: WhopSDK::CustomCta,
        custom_cta_url: String | nil,
        custom_statement_descriptor: String | nil,
        description: String | nil,
        external_identifier: String | nil,
        global_affiliate_percentage: Float | nil,
        global_affiliate_status: WhopSDK::GlobalAffiliateStatus,
        headline: String | nil,
        industry_type: WhopSDK::IndustryTypes | nil,
        member_affiliate_percentage: Float | nil,
        member_affiliate_status: WhopSDK::GlobalAffiliateStatus,
        member_count: Integer,
        owner_user: WhopSDK::Product::OwnerUser,
        product_tax_code: WhopSDK::Product::ProductTaxCode | nil,
        published_reviews_count: Integer,
        route: String,
        title: String,
        updated_at: Time,
        verified: WhopSDK::Internal::Type::Boolean,
        visibility: WhopSDK::Visibility
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @whop.products.update("prod_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Product
    end

    assert_pattern do
      response => {
        id: String,
        business_type: WhopSDK::BusinessTypes | nil,
        company: WhopSDK::Product::Company,
        created_at: Time,
        custom_cta: WhopSDK::CustomCta,
        custom_cta_url: String | nil,
        custom_statement_descriptor: String | nil,
        description: String | nil,
        external_identifier: String | nil,
        global_affiliate_percentage: Float | nil,
        global_affiliate_status: WhopSDK::GlobalAffiliateStatus,
        headline: String | nil,
        industry_type: WhopSDK::IndustryTypes | nil,
        member_affiliate_percentage: Float | nil,
        member_affiliate_status: WhopSDK::GlobalAffiliateStatus,
        member_count: Integer,
        owner_user: WhopSDK::Product::OwnerUser,
        product_tax_code: WhopSDK::Product::ProductTaxCode | nil,
        published_reviews_count: Integer,
        route: String,
        title: String,
        updated_at: Time,
        verified: WhopSDK::Internal::Type::Boolean,
        visibility: WhopSDK::Visibility
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.products.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::ProductListItem
    end

    assert_pattern do
      row => {
        id: String,
        business_type: WhopSDK::BusinessTypes | nil,
        created_at: Time,
        external_identifier: String | nil,
        headline: String | nil,
        industry_type: WhopSDK::IndustryTypes | nil,
        member_count: Integer,
        published_reviews_count: Integer,
        route: String,
        title: String,
        updated_at: Time,
        verified: WhopSDK::Internal::Type::Boolean,
        visibility: WhopSDK::Visibility
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @whop.products.delete("prod_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end
end
