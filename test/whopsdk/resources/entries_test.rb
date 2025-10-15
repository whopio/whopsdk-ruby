# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::EntriesTest < Whopsdk::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.entries.retrieve("entry_xxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Entry
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time | nil,
        custom_field_responses: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Entry::CustomFieldResponse]) | nil,
        plan: Whopsdk::Entry::Plan | nil,
        product: Whopsdk::Entry::Product | nil,
        status: Whopsdk::EntryStatus,
        user: Whopsdk::Entry::User
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.entries.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::Models::EntryListResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time | nil,
        plan: Whopsdk::Models::EntryListResponse::Plan | nil,
        product: Whopsdk::Models::EntryListResponse::Product | nil,
        status: Whopsdk::EntryStatus,
        user: Whopsdk::Models::EntryListResponse::User
      }
    end
  end

  def test_approve
    skip("Prism tests are disabled")

    response = @whop.entries.approve("entry_xxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Models::EntryApproveResponse
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
      response => Whopsdk::Entry
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time | nil,
        custom_field_responses: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Entry::CustomFieldResponse]) | nil,
        plan: Whopsdk::Entry::Plan | nil,
        product: Whopsdk::Entry::Product | nil,
        status: Whopsdk::EntryStatus,
        user: Whopsdk::Entry::User
      }
    end
  end
end
