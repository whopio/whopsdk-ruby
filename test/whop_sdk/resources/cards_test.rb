# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::CardsTest < WhopSDK::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @whop.cards.create

    assert_pattern do
      response => WhopSDK::Models::CardCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        billing: WhopSDK::Models::CardCreateResponse::Billing | nil,
        canceled_at: Time | nil,
        created_at: Time | nil,
        expiration_month: String | nil,
        expiration_year: String | nil,
        last4: String | nil,
        limit: WhopSDK::Models::CardCreateResponse::Limit | nil,
        name: String | nil,
        object: WhopSDK::Models::CardCreateResponse::Object,
        spent_last_month: Integer | nil,
        status: WhopSDK::Models::CardCreateResponse::Status | nil,
        type: WhopSDK::Models::CardCreateResponse::Type | nil,
        user_id: String | nil,
        secrets: WhopSDK::Models::CardCreateResponse::Secrets | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.cards.retrieve("card_id")

    assert_pattern do
      response => WhopSDK::Models::CardRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        billing: WhopSDK::Models::CardRetrieveResponse::Billing | nil,
        canceled_at: Time | nil,
        created_at: Time | nil,
        expiration_month: String | nil,
        expiration_year: String | nil,
        last4: String | nil,
        limit: WhopSDK::Models::CardRetrieveResponse::Limit | nil,
        name: String | nil,
        object: WhopSDK::Models::CardRetrieveResponse::Object,
        spent_last_month: Integer | nil,
        status: WhopSDK::Models::CardRetrieveResponse::Status | nil,
        type: WhopSDK::Models::CardRetrieveResponse::Type | nil,
        user_id: String | nil,
        secrets: WhopSDK::Models::CardRetrieveResponse::Secrets | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.cards.update("card_id")

    assert_pattern do
      response => WhopSDK::Models::CardUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        billing: WhopSDK::Models::CardUpdateResponse::Billing | nil,
        canceled_at: Time | nil,
        created_at: Time | nil,
        expiration_month: String | nil,
        expiration_year: String | nil,
        last4: String | nil,
        limit: WhopSDK::Models::CardUpdateResponse::Limit | nil,
        name: String | nil,
        object: WhopSDK::Models::CardUpdateResponse::Object,
        spent_last_month: Integer | nil,
        status: WhopSDK::Models::CardUpdateResponse::Status | nil,
        type: WhopSDK::Models::CardUpdateResponse::Type | nil,
        user_id: String | nil,
        secrets: WhopSDK::Models::CardUpdateResponse::Secrets | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.cards.list

    assert_pattern do
      response => WhopSDK::Models::CardListResponse
    end

    assert_pattern do
      response => {
        data: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::CardListResponse::Data])
      }
    end
  end
end
