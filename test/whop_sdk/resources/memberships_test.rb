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
      response => WhopSDK::Models::MembershipAddFreeDaysResponse
    end

    assert_pattern do
      response => {
        id: String,
        cancel_at_period_end: WhopSDK::Internal::Type::Boolean,
        cancel_option: WhopSDK::CancelOptions | nil,
        cancelation_status: WhopSDK::Models::MembershipAddFreeDaysResponse::CancelationStatus | nil,
        canceled_at: Time | nil,
        cancellation_reason: String | nil,
        checkout_configuration_id: String | nil,
        company: WhopSDK::Models::MembershipAddFreeDaysResponse::Company,
        created_at: Time,
        currency: WhopSDK::Currency | nil,
        custom_field_responses: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::MembershipAddFreeDaysResponse::CustomFieldResponse]),
        formatted_renewal_price: String | nil,
        initial_price_paid: String,
        joined_at: Time | nil,
        license_key: String | nil,
        manage_url: String | nil,
        member: WhopSDK::Models::MembershipAddFreeDaysResponse::Member | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        payment_collection_paused: WhopSDK::Internal::Type::Boolean,
        plan: WhopSDK::Models::MembershipAddFreeDaysResponse::Plan,
        product: WhopSDK::Models::MembershipAddFreeDaysResponse::Product,
        promo_code: WhopSDK::Models::MembershipAddFreeDaysResponse::PromoCode | nil,
        renewal_period_end: Time | nil,
        renewal_period_start: Time | nil,
        status: WhopSDK::MembershipStatus,
        updated_at: Time,
        user: WhopSDK::Models::MembershipAddFreeDaysResponse::User | nil
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
      response => WhopSDK::Models::MembershipUncancelResponse
    end

    assert_pattern do
      response => {
        id: String,
        cancel_at_period_end: WhopSDK::Internal::Type::Boolean,
        cancel_option: WhopSDK::CancelOptions | nil,
        cancelation_status: WhopSDK::Models::MembershipUncancelResponse::CancelationStatus | nil,
        canceled_at: Time | nil,
        cancellation_reason: String | nil,
        checkout_configuration_id: String | nil,
        company: WhopSDK::Models::MembershipUncancelResponse::Company,
        created_at: Time,
        currency: WhopSDK::Currency | nil,
        custom_field_responses: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::MembershipUncancelResponse::CustomFieldResponse]),
        formatted_renewal_price: String | nil,
        initial_price_paid: String,
        joined_at: Time | nil,
        license_key: String | nil,
        manage_url: String | nil,
        member: WhopSDK::Models::MembershipUncancelResponse::Member | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        payment_collection_paused: WhopSDK::Internal::Type::Boolean,
        plan: WhopSDK::Models::MembershipUncancelResponse::Plan,
        product: WhopSDK::Models::MembershipUncancelResponse::Product,
        promo_code: WhopSDK::Models::MembershipUncancelResponse::PromoCode | nil,
        renewal_period_end: Time | nil,
        renewal_period_start: Time | nil,
        status: WhopSDK::MembershipStatus,
        updated_at: Time,
        user: WhopSDK::Models::MembershipUncancelResponse::User | nil
      }
    end
  end
end
