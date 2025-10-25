# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::PromoCodesTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @whop.promo_codes.create(
        amount_off: 6.9,
        base_currency: :usd,
        code: "code",
        company_id: "biz_xxxxxxxxxxxxxx",
        new_users_only: true,
        promo_duration_months: 42,
        promo_type: :percentage
      )

    assert_pattern do
      response => WhopSDK::PromoCode
    end

    assert_pattern do
      response => {
        id: String,
        amount_off: Float,
        churned_users_only: WhopSDK::Internal::Type::Boolean,
        code: String | nil,
        company: WhopSDK::PromoCode::Company,
        created_at: Time,
        currency: WhopSDK::Currency,
        duration: WhopSDK::PromoDuration | nil,
        existing_memberships_only: WhopSDK::Internal::Type::Boolean,
        expires_at: Time | nil,
        new_users_only: WhopSDK::Internal::Type::Boolean,
        one_per_customer: WhopSDK::Internal::Type::Boolean,
        product: WhopSDK::PromoCode::Product | nil,
        promo_duration_months: Integer | nil,
        promo_type: WhopSDK::PromoType,
        status: WhopSDK::PromoCodeStatus,
        stock: Integer,
        unlimited_stock: WhopSDK::Internal::Type::Boolean,
        uses: Integer
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.promo_codes.retrieve("promo_xxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::PromoCode
    end

    assert_pattern do
      response => {
        id: String,
        amount_off: Float,
        churned_users_only: WhopSDK::Internal::Type::Boolean,
        code: String | nil,
        company: WhopSDK::PromoCode::Company,
        created_at: Time,
        currency: WhopSDK::Currency,
        duration: WhopSDK::PromoDuration | nil,
        existing_memberships_only: WhopSDK::Internal::Type::Boolean,
        expires_at: Time | nil,
        new_users_only: WhopSDK::Internal::Type::Boolean,
        one_per_customer: WhopSDK::Internal::Type::Boolean,
        product: WhopSDK::PromoCode::Product | nil,
        promo_duration_months: Integer | nil,
        promo_type: WhopSDK::PromoType,
        status: WhopSDK::PromoCodeStatus,
        stock: Integer,
        unlimited_stock: WhopSDK::Internal::Type::Boolean,
        uses: Integer
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.promo_codes.list(company_id: "biz_xxxxxxxxxxxxxx")

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
        created_at: Time,
        currency: WhopSDK::Currency,
        duration: WhopSDK::PromoDuration | nil,
        existing_memberships_only: WhopSDK::Internal::Type::Boolean,
        expires_at: Time | nil,
        new_users_only: WhopSDK::Internal::Type::Boolean,
        one_per_customer: WhopSDK::Internal::Type::Boolean,
        product: WhopSDK::Models::PromoCodeListResponse::Product | nil,
        promo_duration_months: Integer | nil,
        promo_type: WhopSDK::PromoType,
        status: WhopSDK::PromoCodeStatus,
        stock: Integer,
        unlimited_stock: WhopSDK::Internal::Type::Boolean,
        uses: Integer
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @whop.promo_codes.delete("promo_xxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end
end
