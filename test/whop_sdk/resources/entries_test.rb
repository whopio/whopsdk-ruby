# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::EntriesTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.entries.retrieve("entry_xxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Entry
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time | nil,
        custom_field_responses: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Entry::CustomFieldResponse]) | nil,
        plan: WhopSDK::Entry::Plan | nil,
        product: WhopSDK::Entry::Product | nil,
        status: WhopSDK::EntryStatus,
        user: WhopSDK::Entry::User
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.entries.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::EntryListResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time | nil,
        plan: WhopSDK::Models::EntryListResponse::Plan | nil,
        product: WhopSDK::Models::EntryListResponse::Product | nil,
        status: WhopSDK::EntryStatus,
        user: WhopSDK::Models::EntryListResponse::User
      }
    end
  end

  def test_approve
    skip("Prism tests are disabled")

    response = @whop.entries.approve("entry_xxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::EntryApproveResponse
    end

    assert_pattern do
      response => {
        job_id: String
      }
    end
  end

  def test_deny
    skip("Prism tests are disabled")

    response = @whop.entries.deny("entry_xxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Entry
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time | nil,
        custom_field_responses: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Entry::CustomFieldResponse]) | nil,
        plan: WhopSDK::Entry::Plan | nil,
        product: WhopSDK::Entry::Product | nil,
        status: WhopSDK::EntryStatus,
        user: WhopSDK::Entry::User
      }
    end
  end
end
