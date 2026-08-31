# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::MembershipsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.memberships.retrieve("id")

    assert_pattern do
      response => WhopSDK::Membership
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::Membership::Account,
        cancel_at_period_end: WhopSDK::Internal::Type::Boolean,
        created_at: String,
        current_period_end: String | nil,
        license_key: String | nil,
        member: WhopSDK::Membership::Member | nil,
        metadata: WhopSDK::Internal::Type::Unknown,
        phone_number: String | nil,
        plan_id: String,
        product_id: String,
        status: WhopSDK::Membership::Status,
        user_id: String | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.memberships.update("id")

    assert_pattern do
      response => WhopSDK::Membership
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::Membership::Account,
        cancel_at_period_end: WhopSDK::Internal::Type::Boolean,
        created_at: String,
        current_period_end: String | nil,
        license_key: String | nil,
        member: WhopSDK::Membership::Member | nil,
        metadata: WhopSDK::Internal::Type::Unknown,
        phone_number: String | nil,
        plan_id: String,
        product_id: String,
        status: WhopSDK::Membership::Status,
        user_id: String | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.memberships.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Membership
    end

    assert_pattern do
      row => {
        id: String,
        account: WhopSDK::Membership::Account,
        cancel_at_period_end: WhopSDK::Internal::Type::Boolean,
        created_at: String,
        current_period_end: String | nil,
        license_key: String | nil,
        member: WhopSDK::Membership::Member | nil,
        metadata: WhopSDK::Internal::Type::Unknown,
        phone_number: String | nil,
        plan_id: String,
        product_id: String,
        status: WhopSDK::Membership::Status,
        user_id: String | nil
      }
    end
  end

  def test_add_free_days_required_params
    skip("Mock server tests are disabled")

    response = @whop.memberships.add_free_days("mem_xxxxxxxxxxxxxx", free_days: 42)

    assert_pattern do
      response => WhopSDK::Membership
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::Membership::Account,
        cancel_at_period_end: WhopSDK::Internal::Type::Boolean,
        created_at: String,
        current_period_end: String | nil,
        license_key: String | nil,
        member: WhopSDK::Membership::Member | nil,
        metadata: WhopSDK::Internal::Type::Unknown,
        phone_number: String | nil,
        plan_id: String,
        product_id: String,
        status: WhopSDK::Membership::Status,
        user_id: String | nil
      }
    end
  end

  def test_cancel
    skip("Mock server tests are disabled")

    response = @whop.memberships.cancel("id")

    assert_pattern do
      response => WhopSDK::Membership
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::Membership::Account,
        cancel_at_period_end: WhopSDK::Internal::Type::Boolean,
        created_at: String,
        current_period_end: String | nil,
        license_key: String | nil,
        member: WhopSDK::Membership::Member | nil,
        metadata: WhopSDK::Internal::Type::Unknown,
        phone_number: String | nil,
        plan_id: String,
        product_id: String,
        status: WhopSDK::Membership::Status,
        user_id: String | nil
      }
    end
  end

  def test_pause
    skip("Mock server tests are disabled")

    response = @whop.memberships.pause("id")

    assert_pattern do
      response => WhopSDK::Membership
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::Membership::Account,
        cancel_at_period_end: WhopSDK::Internal::Type::Boolean,
        created_at: String,
        current_period_end: String | nil,
        license_key: String | nil,
        member: WhopSDK::Membership::Member | nil,
        metadata: WhopSDK::Internal::Type::Unknown,
        phone_number: String | nil,
        plan_id: String,
        product_id: String,
        status: WhopSDK::Membership::Status,
        user_id: String | nil
      }
    end
  end

  def test_resume
    skip("Mock server tests are disabled")

    response = @whop.memberships.resume("id")

    assert_pattern do
      response => WhopSDK::Membership
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::Membership::Account,
        cancel_at_period_end: WhopSDK::Internal::Type::Boolean,
        created_at: String,
        current_period_end: String | nil,
        license_key: String | nil,
        member: WhopSDK::Membership::Member | nil,
        metadata: WhopSDK::Internal::Type::Unknown,
        phone_number: String | nil,
        plan_id: String,
        product_id: String,
        status: WhopSDK::Membership::Status,
        user_id: String | nil
      }
    end
  end

  def test_uncancel
    skip("Mock server tests are disabled")

    response = @whop.memberships.uncancel("mem_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Membership
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::Membership::Account,
        cancel_at_period_end: WhopSDK::Internal::Type::Boolean,
        created_at: String,
        current_period_end: String | nil,
        license_key: String | nil,
        member: WhopSDK::Membership::Member | nil,
        metadata: WhopSDK::Internal::Type::Unknown,
        phone_number: String | nil,
        plan_id: String,
        product_id: String,
        status: WhopSDK::Membership::Status,
        user_id: String | nil
      }
    end
  end
end
