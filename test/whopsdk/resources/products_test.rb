# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::ProductsTest < Whopsdk::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.products.create(company_id: "biz_xxxxxxxxxxxxxx", title: "title")

    assert_pattern do
      response => Whopsdk::Product
    end

    assert_pattern do
      response => {
        id: String,
        business_type: Whopsdk::BusinessTypes | nil,
        company: Whopsdk::Product::Company,
        created_at: Integer,
        custom_cta: Whopsdk::CustomCta,
        custom_cta_url: String | nil,
        custom_statement_descriptor: String | nil,
        description: String | nil,
        global_affiliate_percentage: Float | nil,
        global_affiliate_status: Whopsdk::GlobalAffiliateStatus,
        headline: String | nil,
        industry_type: Whopsdk::IndustryTypes | nil,
        member_affiliate_percentage: Float | nil,
        member_affiliate_status: Whopsdk::GlobalAffiliateStatus,
        member_count: Integer,
        owner_user: Whopsdk::Product::OwnerUser,
        product_tax_code: Whopsdk::Product::ProductTaxCode | nil,
        published_reviews_count: Integer,
        route: String,
        title: String,
        updated_at: Integer,
        verified: Whopsdk::Internal::Type::Boolean,
        visibility: Whopsdk::Visibility
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.products.retrieve("prod_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Product
    end

    assert_pattern do
      response => {
        id: String,
        business_type: Whopsdk::BusinessTypes | nil,
        company: Whopsdk::Product::Company,
        created_at: Integer,
        custom_cta: Whopsdk::CustomCta,
        custom_cta_url: String | nil,
        custom_statement_descriptor: String | nil,
        description: String | nil,
        global_affiliate_percentage: Float | nil,
        global_affiliate_status: Whopsdk::GlobalAffiliateStatus,
        headline: String | nil,
        industry_type: Whopsdk::IndustryTypes | nil,
        member_affiliate_percentage: Float | nil,
        member_affiliate_status: Whopsdk::GlobalAffiliateStatus,
        member_count: Integer,
        owner_user: Whopsdk::Product::OwnerUser,
        product_tax_code: Whopsdk::Product::ProductTaxCode | nil,
        published_reviews_count: Integer,
        route: String,
        title: String,
        updated_at: Integer,
        verified: Whopsdk::Internal::Type::Boolean,
        visibility: Whopsdk::Visibility
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @whopsdk.products.update("prod_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Product
    end

    assert_pattern do
      response => {
        id: String,
        business_type: Whopsdk::BusinessTypes | nil,
        company: Whopsdk::Product::Company,
        created_at: Integer,
        custom_cta: Whopsdk::CustomCta,
        custom_cta_url: String | nil,
        custom_statement_descriptor: String | nil,
        description: String | nil,
        global_affiliate_percentage: Float | nil,
        global_affiliate_status: Whopsdk::GlobalAffiliateStatus,
        headline: String | nil,
        industry_type: Whopsdk::IndustryTypes | nil,
        member_affiliate_percentage: Float | nil,
        member_affiliate_status: Whopsdk::GlobalAffiliateStatus,
        member_count: Integer,
        owner_user: Whopsdk::Product::OwnerUser,
        product_tax_code: Whopsdk::Product::ProductTaxCode | nil,
        published_reviews_count: Integer,
        route: String,
        title: String,
        updated_at: Integer,
        verified: Whopsdk::Internal::Type::Boolean,
        visibility: Whopsdk::Visibility
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.products.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::ProductListItem
    end

    assert_pattern do
      row => {
        id: String,
        business_type: Whopsdk::BusinessTypes | nil,
        created_at: Integer,
        headline: String | nil,
        industry_type: Whopsdk::IndustryTypes | nil,
        member_count: Integer,
        published_reviews_count: Integer,
        route: String,
        title: String,
        updated_at: Integer,
        verified: Whopsdk::Internal::Type::Boolean,
        visibility: Whopsdk::Visibility
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @whopsdk.products.delete("prod_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::Type::Boolean
    end
  end
end
