# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::PeopleTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.people.retrieve("person_id")

    assert_pattern do
      response => WhopSDK::Models::PersonRetrieveResponse
    end

    assert_pattern do
      response => {
        data: WhopSDK::Models::PersonRetrieveResponse::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.people.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::PersonListResponse
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String,
        first_seen_at: Integer,
        last_seen_at: Integer,
        person_id: String,
        purchase_count: Integer,
        ad_sets: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::PersonListResponse::AdSet]) | nil,
        ads: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::PersonListResponse::Ad]) | nil,
        aov: Float | nil,
        campaigns: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::PersonListResponse::Campaign]) | nil,
        email: String | nil,
        has_failed_payment: WhopSDK::Internal::Type::Boolean | nil,
        ltv: Float | nil,
        name: String | nil,
        phone: String | nil
      }
    end
  end
end
