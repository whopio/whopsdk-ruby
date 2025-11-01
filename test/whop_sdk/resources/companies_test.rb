# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::CompaniesTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whop.companies.create(email: "email", parent_company_id: "parent_company_id", title: "title")

    assert_pattern do
      response => WhopSDK::Company
    end

    assert_pattern do
      response => {
        id: String,
        business_type: WhopSDK::BusinessTypes | nil,
        created_at: Time,
        description: String | nil,
        industry_type: WhopSDK::IndustryTypes | nil,
        logo: WhopSDK::Company::Logo | nil,
        member_count: Integer,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        owner_user: WhopSDK::Company::OwnerUser,
        published_reviews_count: Integer,
        route: String,
        social_links: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Company::SocialLink]),
        title: String,
        updated_at: Time,
        verified: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.companies.retrieve("biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Company
    end

    assert_pattern do
      response => {
        id: String,
        business_type: WhopSDK::BusinessTypes | nil,
        created_at: Time,
        description: String | nil,
        industry_type: WhopSDK::IndustryTypes | nil,
        logo: WhopSDK::Company::Logo | nil,
        member_count: Integer,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        owner_user: WhopSDK::Company::OwnerUser,
        published_reviews_count: Integer,
        route: String,
        social_links: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Company::SocialLink]),
        title: String,
        updated_at: Time,
        verified: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.companies.list(parent_company_id: "parent_company_id")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::CompanyListResponse
    end

    assert_pattern do
      row => {
        id: String,
        business_type: WhopSDK::BusinessTypes | nil,
        created_at: Time,
        description: String | nil,
        industry_type: WhopSDK::IndustryTypes | nil,
        logo: WhopSDK::Models::CompanyListResponse::Logo | nil,
        member_count: Integer,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        owner_user: WhopSDK::Models::CompanyListResponse::OwnerUser,
        published_reviews_count: Integer,
        route: String,
        title: String,
        updated_at: Time,
        verified: WhopSDK::Internal::Type::Boolean
      }
    end
  end
end
