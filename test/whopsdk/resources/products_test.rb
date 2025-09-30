# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::ProductsTest < Whopsdk::Test::ResourceTest
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
        industry_type: Whopsdk::IndustryTypes | nil,
        member_count: Integer,
        owner_user: Whopsdk::Product::OwnerUser,
        published_reviews_count: Integer,
        route: String,
        title: String,
        updated_at: Integer,
        verified: Whopsdk::Internal::Type::Boolean
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
        industry_type: Whopsdk::IndustryTypes | nil,
        member_count: Integer,
        published_reviews_count: Integer,
        route: String,
        title: String,
        updated_at: Integer,
        verified: Whopsdk::Internal::Type::Boolean
      }
    end
  end
end
