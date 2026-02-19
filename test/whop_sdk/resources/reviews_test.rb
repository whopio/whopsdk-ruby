# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::ReviewsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.reviews.retrieve("rev_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::ReviewRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        attachments: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::ReviewRetrieveResponse::Attachment]),
        company: WhopSDK::Models::ReviewRetrieveResponse::Company,
        created_at: Time,
        description: String | nil,
        joined_at: Time | nil,
        paid_for_product: WhopSDK::Internal::Type::Boolean | nil,
        product: WhopSDK::Models::ReviewRetrieveResponse::Product,
        published_at: Time | nil,
        stars: Integer,
        status: WhopSDK::ReviewStatus,
        title: String | nil,
        updated_at: Time,
        user: WhopSDK::Models::ReviewRetrieveResponse::User
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.reviews.list(product_id: "prod_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::ReviewListResponse
    end

    assert_pattern do
      row => {
        id: String,
        attachments: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::ReviewListResponse::Attachment]),
        created_at: Time,
        description: String | nil,
        joined_at: Time | nil,
        paid_for_product: WhopSDK::Internal::Type::Boolean | nil,
        published_at: Time | nil,
        stars: Integer,
        status: WhopSDK::ReviewStatus,
        title: String | nil,
        updated_at: Time,
        user: WhopSDK::Models::ReviewListResponse::User
      }
    end
  end
end
