# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::CompaniesTest < WhopSDK::Test::ResourceTest
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
        industry_type: WhopSDK::IndustryTypes | nil,
        member_count: Integer,
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
end
