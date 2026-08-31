# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::PromoCodesTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @whop.promo_codes.create(
        account_id: "biz_xxxxxxxxxxxxxx",
        amount_off: 25,
        base_currency: :usd,
        code: "AFFILIATE25",
        new_users_only: true,
        promo_duration_months: 3,
        promo_type: :percentage
      )

    assert_pattern do
      response => WhopSDK::PromoCode
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::PromoCode::Account,
        amount_off: Float,
        churned_users_only: WhopSDK::Internal::Type::Boolean,
        code: String | nil,
        created_at: String,
        currency: WhopSDK::PromoCode::Currency,
        duration: WhopSDK::PromoCode::Duration,
        existing_memberships_only: WhopSDK::Internal::Type::Boolean,
        expires_at: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown,
        new_users_only: WhopSDK::Internal::Type::Boolean,
        one_per_customer: WhopSDK::Internal::Type::Boolean,
        product: WhopSDK::PromoCode::Product | nil,
        promo_duration_months: Integer | nil,
        promo_type: WhopSDK::PromoCode::PromoType,
        status: WhopSDK::PromoCode::Status,
        stock: Integer,
        unlimited_stock: WhopSDK::Internal::Type::Boolean,
        updated_at: String,
        uses: Integer
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.promo_codes.retrieve("id")

    assert_pattern do
      response => WhopSDK::PromoCode
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::PromoCode::Account,
        amount_off: Float,
        churned_users_only: WhopSDK::Internal::Type::Boolean,
        code: String | nil,
        created_at: String,
        currency: WhopSDK::PromoCode::Currency,
        duration: WhopSDK::PromoCode::Duration,
        existing_memberships_only: WhopSDK::Internal::Type::Boolean,
        expires_at: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown,
        new_users_only: WhopSDK::Internal::Type::Boolean,
        one_per_customer: WhopSDK::Internal::Type::Boolean,
        product: WhopSDK::PromoCode::Product | nil,
        promo_duration_months: Integer | nil,
        promo_type: WhopSDK::PromoCode::PromoType,
        status: WhopSDK::PromoCode::Status,
        stock: Integer,
        unlimited_stock: WhopSDK::Internal::Type::Boolean,
        updated_at: String,
        uses: Integer
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.promo_codes.list(account_id: "account_id")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::PromoCodeListResponse
    end

    assert_pattern do
      row => {
        id: String,
        amount_off: Float,
        churned_users_only: WhopSDK::Internal::Type::Boolean,
        code: String | nil,
        created_at: String,
        currency: WhopSDK::Models::PromoCodeListResponse::Currency,
        duration: WhopSDK::Models::PromoCodeListResponse::Duration,
        existing_memberships_only: WhopSDK::Internal::Type::Boolean,
        expires_at: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown,
        new_users_only: WhopSDK::Internal::Type::Boolean,
        one_per_customer: WhopSDK::Internal::Type::Boolean,
        product: WhopSDK::Models::PromoCodeListResponse::Product | nil,
        promo_duration_months: Integer | nil,
        promo_type: WhopSDK::Models::PromoCodeListResponse::PromoType,
        status: WhopSDK::Models::PromoCodeListResponse::Status,
        stock: Integer,
        unlimited_stock: WhopSDK::Internal::Type::Boolean,
        updated_at: String,
        uses: Integer
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.promo_codes.delete("id")

    assert_pattern do
      response => WhopSDK::Models::PromoCodeDeleteResponse
    end

    assert_pattern do
      response => {
        id: String,
        deleted: WhopSDK::Internal::Type::Boolean
      }
    end
  end
end
