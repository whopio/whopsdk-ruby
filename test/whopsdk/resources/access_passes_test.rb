# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::AccessPassesTest < Whopsdk::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.access_passes.retrieve("prod_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Models::AccessPassRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        business_type: Whopsdk::Models::AccessPassRetrieveResponse::BusinessType | nil,
        created_at: Integer,
        industry_type: Whopsdk::Models::AccessPassRetrieveResponse::IndustryType | nil,
        member_count: Integer,
        owner_user: Whopsdk::Models::AccessPassRetrieveResponse::OwnerUser,
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
      response => Whopsdk::Models::AccessPassListResponse
    end

    assert_pattern do
      response => {
        data: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Models::AccessPassListResponse::Data, nil?: true]) | nil,
        page_info: Whopsdk::Models::AccessPassListResponse::PageInfo
      }
    end
  end
end
