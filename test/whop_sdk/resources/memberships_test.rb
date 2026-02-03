# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::MembershipsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.memberships.retrieve("mem_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Membership
    end

    assert_pattern do
      response => {
        id: String,
        cancel_at_period_end: WhopSDK::Internal::Type::Boolean,
        cancel_option: WhopSDK::CancelOptions | nil,
        canceled_at: Time | nil,
        cancellation_reason: String | nil,
        company: WhopSDK::Membership::Company,
        created_at: Time,
        currency: WhopSDK::Currency | nil,
        custom_field_responses: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Membership::CustomFieldResponse]),
        license_key: String | nil,
        manage_url: String | nil,
        member: WhopSDK::Membership::Member | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]),
        payment_collection_paused: WhopSDK::Internal::Type::Boolean,
        plan: WhopSDK::Membership::Plan,
        product: WhopSDK::Membership::Product,
        promo_code: WhopSDK::Membership::PromoCode | nil,
        renewal_period_end: Time | nil,
        renewal_period_start: Time | nil,
        status: WhopSDK::MembershipStatus,
        updated_at: Time,
        user: WhopSDK::Membership::User | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @whop.memberships.update("mem_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Membership
    end

    assert_pattern do
      response => {
        id: String,
        cancel_at_period_end: WhopSDK::Internal::Type::Boolean,
        cancel_option: WhopSDK::CancelOptions | nil,
        canceled_at: Time | nil,
        cancellation_reason: String | nil,
        company: WhopSDK::Membership::Company,
        created_at: Time,
        currency: WhopSDK::Currency | nil,
        custom_field_responses: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Membership::CustomFieldResponse]),
        license_key: String | nil,
        manage_url: String | nil,
        member: WhopSDK::Membership::Member | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]),
        payment_collection_paused: WhopSDK::Internal::Type::Boolean,
        plan: WhopSDK::Membership::Plan,
        product: WhopSDK::Membership::Product,
        promo_code: WhopSDK::Membership::PromoCode | nil,
        renewal_period_end: Time | nil,
        renewal_period_start: Time | nil,
        status: WhopSDK::MembershipStatus,
        updated_at: Time,
        user: WhopSDK::Membership::User | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @whop.memberships.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::MembershipListResponse
    end

    assert_pattern do
      row => {
        id: String,
        cancel_at_period_end: WhopSDK::Internal::Type::Boolean,
        cancel_option: WhopSDK::CancelOptions | nil,
        canceled_at: Time | nil,
        cancellation_reason: String | nil,
        company: WhopSDK::Models::MembershipListResponse::Company,
        created_at: Time,
        currency: WhopSDK::Currency | nil,
        license_key: String | nil,
        manage_url: String | nil,
        member: WhopSDK::Models::MembershipListResponse::Member | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]),
        payment_collection_paused: WhopSDK::Internal::Type::Boolean,
        plan: WhopSDK::Models::MembershipListResponse::Plan,
        product: WhopSDK::Models::MembershipListResponse::Product,
        promo_code: WhopSDK::Models::MembershipListResponse::PromoCode | nil,
        renewal_period_end: Time | nil,
        renewal_period_start: Time | nil,
        status: WhopSDK::MembershipStatus,
        updated_at: Time,
        user: WhopSDK::Models::MembershipListResponse::User | nil
      }
    end
  end

  def test_cancel
    skip("Prism tests are disabled")

    response = @whop.memberships.cancel("mem_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Membership
    end

    assert_pattern do
      response => {
        id: String,
        cancel_at_period_end: WhopSDK::Internal::Type::Boolean,
        cancel_option: WhopSDK::CancelOptions | nil,
        canceled_at: Time | nil,
        cancellation_reason: String | nil,
        company: WhopSDK::Membership::Company,
        created_at: Time,
        currency: WhopSDK::Currency | nil,
        custom_field_responses: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Membership::CustomFieldResponse]),
        license_key: String | nil,
        manage_url: String | nil,
        member: WhopSDK::Membership::Member | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]),
        payment_collection_paused: WhopSDK::Internal::Type::Boolean,
        plan: WhopSDK::Membership::Plan,
        product: WhopSDK::Membership::Product,
        promo_code: WhopSDK::Membership::PromoCode | nil,
        renewal_period_end: Time | nil,
        renewal_period_start: Time | nil,
        status: WhopSDK::MembershipStatus,
        updated_at: Time,
        user: WhopSDK::Membership::User | nil
      }
    end
  end

  def test_pause
    skip("Prism tests are disabled")

    response = @whop.memberships.pause("mem_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Membership
    end

    assert_pattern do
      response => {
        id: String,
        cancel_at_period_end: WhopSDK::Internal::Type::Boolean,
        cancel_option: WhopSDK::CancelOptions | nil,
        canceled_at: Time | nil,
        cancellation_reason: String | nil,
        company: WhopSDK::Membership::Company,
        created_at: Time,
        currency: WhopSDK::Currency | nil,
        custom_field_responses: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Membership::CustomFieldResponse]),
        license_key: String | nil,
        manage_url: String | nil,
        member: WhopSDK::Membership::Member | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]),
        payment_collection_paused: WhopSDK::Internal::Type::Boolean,
        plan: WhopSDK::Membership::Plan,
        product: WhopSDK::Membership::Product,
        promo_code: WhopSDK::Membership::PromoCode | nil,
        renewal_period_end: Time | nil,
        renewal_period_start: Time | nil,
        status: WhopSDK::MembershipStatus,
        updated_at: Time,
        user: WhopSDK::Membership::User | nil
      }
    end
  end

  def test_resume
    skip("Prism tests are disabled")

    response = @whop.memberships.resume("mem_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Membership
    end

    assert_pattern do
      response => {
        id: String,
        cancel_at_period_end: WhopSDK::Internal::Type::Boolean,
        cancel_option: WhopSDK::CancelOptions | nil,
        canceled_at: Time | nil,
        cancellation_reason: String | nil,
        company: WhopSDK::Membership::Company,
        created_at: Time,
        currency: WhopSDK::Currency | nil,
        custom_field_responses: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Membership::CustomFieldResponse]),
        license_key: String | nil,
        manage_url: String | nil,
        member: WhopSDK::Membership::Member | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]),
        payment_collection_paused: WhopSDK::Internal::Type::Boolean,
        plan: WhopSDK::Membership::Plan,
        product: WhopSDK::Membership::Product,
        promo_code: WhopSDK::Membership::PromoCode | nil,
        renewal_period_end: Time | nil,
        renewal_period_start: Time | nil,
        status: WhopSDK::MembershipStatus,
        updated_at: Time,
        user: WhopSDK::Membership::User | nil
      }
    end
  end

  def test_uncancel
    skip("Prism tests are disabled")

    response = @whop.memberships.uncancel("mem_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Membership
    end

    assert_pattern do
      response => {
        id: String,
        cancel_at_period_end: WhopSDK::Internal::Type::Boolean,
        cancel_option: WhopSDK::CancelOptions | nil,
        canceled_at: Time | nil,
        cancellation_reason: String | nil,
        company: WhopSDK::Membership::Company,
        created_at: Time,
        currency: WhopSDK::Currency | nil,
        custom_field_responses: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Membership::CustomFieldResponse]),
        license_key: String | nil,
        manage_url: String | nil,
        member: WhopSDK::Membership::Member | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]),
        payment_collection_paused: WhopSDK::Internal::Type::Boolean,
        plan: WhopSDK::Membership::Plan,
        product: WhopSDK::Membership::Product,
        promo_code: WhopSDK::Membership::PromoCode | nil,
        renewal_period_end: Time | nil,
        renewal_period_start: Time | nil,
        status: WhopSDK::MembershipStatus,
        updated_at: Time,
        user: WhopSDK::Membership::User | nil
      }
    end
  end
end
