# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::MembershipsTest < Whopsdk::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.memberships.retrieve("mem_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Membership
    end

    assert_pattern do
      response => {
        id: String,
        cancel_at_period_end: Whopsdk::Internal::Type::Boolean,
        canceled_at: Integer | nil,
        cancellation_reason: String | nil,
        company: Whopsdk::Membership::Company,
        created_at: Integer,
        currency: Whopsdk::Currency | nil,
        license_key: String | nil,
        manage_url: String | nil,
        member: Whopsdk::Membership::Member | nil,
        metadata: ^(Whopsdk::Internal::Type::HashOf[Whopsdk::Internal::Type::Unknown]),
        payment_collection_paused: Whopsdk::Internal::Type::Boolean,
        plan: Whopsdk::Membership::Plan,
        promo_code: Whopsdk::Membership::PromoCode | nil,
        renewal_period_end: Integer | nil,
        renewal_period_start: Integer | nil,
        status: Whopsdk::MembershipStatus,
        updated_at: Integer,
        user: Whopsdk::Membership::User | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @whop.memberships.update("mem_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Membership
    end

    assert_pattern do
      response => {
        id: String,
        cancel_at_period_end: Whopsdk::Internal::Type::Boolean,
        canceled_at: Integer | nil,
        cancellation_reason: String | nil,
        company: Whopsdk::Membership::Company,
        created_at: Integer,
        currency: Whopsdk::Currency | nil,
        license_key: String | nil,
        manage_url: String | nil,
        member: Whopsdk::Membership::Member | nil,
        metadata: ^(Whopsdk::Internal::Type::HashOf[Whopsdk::Internal::Type::Unknown]),
        payment_collection_paused: Whopsdk::Internal::Type::Boolean,
        plan: Whopsdk::Membership::Plan,
        promo_code: Whopsdk::Membership::PromoCode | nil,
        renewal_period_end: Integer | nil,
        renewal_period_start: Integer | nil,
        status: Whopsdk::MembershipStatus,
        updated_at: Integer,
        user: Whopsdk::Membership::User | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.memberships.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::Models::MembershipListResponse
    end

    assert_pattern do
      row => {
        id: String,
        cancel_at_period_end: Whopsdk::Internal::Type::Boolean,
        canceled_at: Integer | nil,
        cancellation_reason: String | nil,
        company: Whopsdk::Models::MembershipListResponse::Company,
        created_at: Integer,
        currency: Whopsdk::Currency | nil,
        license_key: String | nil,
        manage_url: String | nil,
        member: Whopsdk::Models::MembershipListResponse::Member | nil,
        metadata: ^(Whopsdk::Internal::Type::HashOf[Whopsdk::Internal::Type::Unknown]),
        payment_collection_paused: Whopsdk::Internal::Type::Boolean,
        plan: Whopsdk::Models::MembershipListResponse::Plan,
        promo_code: Whopsdk::Models::MembershipListResponse::PromoCode | nil,
        renewal_period_end: Integer | nil,
        renewal_period_start: Integer | nil,
        status: Whopsdk::MembershipStatus,
        updated_at: Integer,
        user: Whopsdk::Models::MembershipListResponse::User | nil
      }
    end
  end

  def test_cancel
    skip("Prism tests are disabled")

    response = @whop.memberships.cancel("mem_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Membership
    end

    assert_pattern do
      response => {
        id: String,
        cancel_at_period_end: Whopsdk::Internal::Type::Boolean,
        canceled_at: Integer | nil,
        cancellation_reason: String | nil,
        company: Whopsdk::Membership::Company,
        created_at: Integer,
        currency: Whopsdk::Currency | nil,
        license_key: String | nil,
        manage_url: String | nil,
        member: Whopsdk::Membership::Member | nil,
        metadata: ^(Whopsdk::Internal::Type::HashOf[Whopsdk::Internal::Type::Unknown]),
        payment_collection_paused: Whopsdk::Internal::Type::Boolean,
        plan: Whopsdk::Membership::Plan,
        promo_code: Whopsdk::Membership::PromoCode | nil,
        renewal_period_end: Integer | nil,
        renewal_period_start: Integer | nil,
        status: Whopsdk::MembershipStatus,
        updated_at: Integer,
        user: Whopsdk::Membership::User | nil
      }
    end
  end

  def test_pause
    skip("Prism tests are disabled")

    response = @whop.memberships.pause("mem_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Membership
    end

    assert_pattern do
      response => {
        id: String,
        cancel_at_period_end: Whopsdk::Internal::Type::Boolean,
        canceled_at: Integer | nil,
        cancellation_reason: String | nil,
        company: Whopsdk::Membership::Company,
        created_at: Integer,
        currency: Whopsdk::Currency | nil,
        license_key: String | nil,
        manage_url: String | nil,
        member: Whopsdk::Membership::Member | nil,
        metadata: ^(Whopsdk::Internal::Type::HashOf[Whopsdk::Internal::Type::Unknown]),
        payment_collection_paused: Whopsdk::Internal::Type::Boolean,
        plan: Whopsdk::Membership::Plan,
        promo_code: Whopsdk::Membership::PromoCode | nil,
        renewal_period_end: Integer | nil,
        renewal_period_start: Integer | nil,
        status: Whopsdk::MembershipStatus,
        updated_at: Integer,
        user: Whopsdk::Membership::User | nil
      }
    end
  end

  def test_resume
    skip("Prism tests are disabled")

    response = @whop.memberships.resume("mem_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Membership
    end

    assert_pattern do
      response => {
        id: String,
        cancel_at_period_end: Whopsdk::Internal::Type::Boolean,
        canceled_at: Integer | nil,
        cancellation_reason: String | nil,
        company: Whopsdk::Membership::Company,
        created_at: Integer,
        currency: Whopsdk::Currency | nil,
        license_key: String | nil,
        manage_url: String | nil,
        member: Whopsdk::Membership::Member | nil,
        metadata: ^(Whopsdk::Internal::Type::HashOf[Whopsdk::Internal::Type::Unknown]),
        payment_collection_paused: Whopsdk::Internal::Type::Boolean,
        plan: Whopsdk::Membership::Plan,
        promo_code: Whopsdk::Membership::PromoCode | nil,
        renewal_period_end: Integer | nil,
        renewal_period_start: Integer | nil,
        status: Whopsdk::MembershipStatus,
        updated_at: Integer,
        user: Whopsdk::Membership::User | nil
      }
    end
  end
end
