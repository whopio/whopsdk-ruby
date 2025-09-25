# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::CompaniesTest < Whopsdk::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.companies.retrieve("biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Company
    end

    assert_pattern do
      response => {
        id: String,
        business_type: Whopsdk::BusinessTypes | nil,
        created_at: Integer,
        industry_type: Whopsdk::IndustryTypes | nil,
        member_count: Integer,
        owner_user: Whopsdk::Company::OwnerUser,
        published_reviews_count: Integer,
        route: String,
        social_links: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Company::SocialLink]),
        title: String,
        updated_at: Integer,
        verified: Whopsdk::Internal::Type::Boolean
      }
    end
  end
end
