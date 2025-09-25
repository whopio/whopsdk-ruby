# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::AccessPassesTest < Whopsdk::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.access_passes.retrieve("prod_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::AccessPass
    end

    assert_pattern do
      response => {
        id: String,
        business_type: Whopsdk::BusinessTypes | nil,
        created_at: Integer,
        industry_type: Whopsdk::IndustryTypes | nil,
        member_count: Integer,
        owner_user: Whopsdk::AccessPass::OwnerUser,
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

    response = @whopsdk.access_passes.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::AccessPassListItem
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
