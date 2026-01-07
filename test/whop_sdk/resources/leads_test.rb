# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::LeadsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whop.leads.create(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::LeadCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        member: WhopSDK::Models::LeadCreateResponse::Member | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        product: WhopSDK::Models::LeadCreateResponse::Product | nil,
        referrer: String | nil,
        updated_at: Time,
        user: WhopSDK::Models::LeadCreateResponse::User
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.leads.retrieve("lead_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::LeadRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        member: WhopSDK::Models::LeadRetrieveResponse::Member | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        product: WhopSDK::Models::LeadRetrieveResponse::Product | nil,
        referrer: String | nil,
        updated_at: Time,
        user: WhopSDK::Models::LeadRetrieveResponse::User
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @whop.leads.update("lead_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::LeadUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        member: WhopSDK::Models::LeadUpdateResponse::Member | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        product: WhopSDK::Models::LeadUpdateResponse::Product | nil,
        referrer: String | nil,
        updated_at: Time,
        user: WhopSDK::Models::LeadUpdateResponse::User
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.leads.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::LeadListResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        member: WhopSDK::Models::LeadListResponse::Member | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        product: WhopSDK::Models::LeadListResponse::Product | nil,
        referrer: String | nil,
        updated_at: Time,
        user: WhopSDK::Models::LeadListResponse::User
      }
    end
  end
end
