# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::PaymentsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.payments.retrieve("pay_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Payment
    end

    assert_pattern do
      response => {
        id: String,
        amount_after_fees: Float,
        auto_refunded: WhopSDK::Internal::Type::Boolean,
        billing_address: WhopSDK::Payment::BillingAddress | nil,
        billing_reason: WhopSDK::BillingReasons | nil,
        card_brand: WhopSDK::CardBrands | nil,
        card_last4: String | nil,
        company: WhopSDK::Payment::Company | nil,
        created_at: Time,
        currency: WhopSDK::Currency | nil,
        dispute_alerted_at: Time | nil,
        failure_message: String | nil,
        last_payment_attempt: Time | nil,
        member: WhopSDK::Payment::Member | nil,
        membership: WhopSDK::Payment::Membership | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        paid_at: Time | nil,
        payment_method_type: WhopSDK::PaymentMethodTypes | nil,
        plan: WhopSDK::Payment::Plan | nil,
        product: WhopSDK::Payment::Product | nil,
        promo_code: WhopSDK::Payment::PromoCode | nil,
        refundable: WhopSDK::Internal::Type::Boolean,
        refunded_amount: Float | nil,
        refunded_at: Time | nil,
        retryable: WhopSDK::Internal::Type::Boolean,
        status: WhopSDK::ReceiptStatus | nil,
        substatus: WhopSDK::FriendlyReceiptStatus,
        subtotal: Float | nil,
        total: Float | nil,
        usd_total: Float | nil,
        user: WhopSDK::Payment::User | nil,
        voidable: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.payments.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::PaymentListResponse
    end

    assert_pattern do
      row => {
        id: String,
        amount_after_fees: Float,
        auto_refunded: WhopSDK::Internal::Type::Boolean,
        billing_address: WhopSDK::Models::PaymentListResponse::BillingAddress | nil,
        billing_reason: WhopSDK::BillingReasons | nil,
        card_brand: WhopSDK::CardBrands | nil,
        card_last4: String | nil,
        company: WhopSDK::Models::PaymentListResponse::Company | nil,
        created_at: Time,
        currency: WhopSDK::Currency | nil,
        dispute_alerted_at: Time | nil,
        failure_message: String | nil,
        last_payment_attempt: Time | nil,
        member: WhopSDK::Models::PaymentListResponse::Member | nil,
        membership: WhopSDK::Models::PaymentListResponse::Membership | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        paid_at: Time | nil,
        payment_method_type: WhopSDK::PaymentMethodTypes | nil,
        plan: WhopSDK::Models::PaymentListResponse::Plan | nil,
        product: WhopSDK::Models::PaymentListResponse::Product | nil,
        promo_code: WhopSDK::Models::PaymentListResponse::PromoCode | nil,
        refundable: WhopSDK::Internal::Type::Boolean,
        refunded_amount: Float | nil,
        refunded_at: Time | nil,
        retryable: WhopSDK::Internal::Type::Boolean,
        status: WhopSDK::ReceiptStatus | nil,
        substatus: WhopSDK::FriendlyReceiptStatus,
        subtotal: Float | nil,
        total: Float | nil,
        usd_total: Float | nil,
        user: WhopSDK::Models::PaymentListResponse::User | nil,
        voidable: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_refund
    skip("Prism tests are disabled")

    response = @whop.payments.refund("pay_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Payment
    end

    assert_pattern do
      response => {
        id: String,
        amount_after_fees: Float,
        auto_refunded: WhopSDK::Internal::Type::Boolean,
        billing_address: WhopSDK::Payment::BillingAddress | nil,
        billing_reason: WhopSDK::BillingReasons | nil,
        card_brand: WhopSDK::CardBrands | nil,
        card_last4: String | nil,
        company: WhopSDK::Payment::Company | nil,
        created_at: Time,
        currency: WhopSDK::Currency | nil,
        dispute_alerted_at: Time | nil,
        failure_message: String | nil,
        last_payment_attempt: Time | nil,
        member: WhopSDK::Payment::Member | nil,
        membership: WhopSDK::Payment::Membership | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        paid_at: Time | nil,
        payment_method_type: WhopSDK::PaymentMethodTypes | nil,
        plan: WhopSDK::Payment::Plan | nil,
        product: WhopSDK::Payment::Product | nil,
        promo_code: WhopSDK::Payment::PromoCode | nil,
        refundable: WhopSDK::Internal::Type::Boolean,
        refunded_amount: Float | nil,
        refunded_at: Time | nil,
        retryable: WhopSDK::Internal::Type::Boolean,
        status: WhopSDK::ReceiptStatus | nil,
        substatus: WhopSDK::FriendlyReceiptStatus,
        subtotal: Float | nil,
        total: Float | nil,
        usd_total: Float | nil,
        user: WhopSDK::Payment::User | nil,
        voidable: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_retry_
    skip("Prism tests are disabled")

    response = @whop.payments.retry_("pay_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Payment
    end

    assert_pattern do
      response => {
        id: String,
        amount_after_fees: Float,
        auto_refunded: WhopSDK::Internal::Type::Boolean,
        billing_address: WhopSDK::Payment::BillingAddress | nil,
        billing_reason: WhopSDK::BillingReasons | nil,
        card_brand: WhopSDK::CardBrands | nil,
        card_last4: String | nil,
        company: WhopSDK::Payment::Company | nil,
        created_at: Time,
        currency: WhopSDK::Currency | nil,
        dispute_alerted_at: Time | nil,
        failure_message: String | nil,
        last_payment_attempt: Time | nil,
        member: WhopSDK::Payment::Member | nil,
        membership: WhopSDK::Payment::Membership | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        paid_at: Time | nil,
        payment_method_type: WhopSDK::PaymentMethodTypes | nil,
        plan: WhopSDK::Payment::Plan | nil,
        product: WhopSDK::Payment::Product | nil,
        promo_code: WhopSDK::Payment::PromoCode | nil,
        refundable: WhopSDK::Internal::Type::Boolean,
        refunded_amount: Float | nil,
        refunded_at: Time | nil,
        retryable: WhopSDK::Internal::Type::Boolean,
        status: WhopSDK::ReceiptStatus | nil,
        substatus: WhopSDK::FriendlyReceiptStatus,
        subtotal: Float | nil,
        total: Float | nil,
        usd_total: Float | nil,
        user: WhopSDK::Payment::User | nil,
        voidable: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_void
    skip("Prism tests are disabled")

    response = @whop.payments.void("pay_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Payment
    end

    assert_pattern do
      response => {
        id: String,
        amount_after_fees: Float,
        auto_refunded: WhopSDK::Internal::Type::Boolean,
        billing_address: WhopSDK::Payment::BillingAddress | nil,
        billing_reason: WhopSDK::BillingReasons | nil,
        card_brand: WhopSDK::CardBrands | nil,
        card_last4: String | nil,
        company: WhopSDK::Payment::Company | nil,
        created_at: Time,
        currency: WhopSDK::Currency | nil,
        dispute_alerted_at: Time | nil,
        failure_message: String | nil,
        last_payment_attempt: Time | nil,
        member: WhopSDK::Payment::Member | nil,
        membership: WhopSDK::Payment::Membership | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        paid_at: Time | nil,
        payment_method_type: WhopSDK::PaymentMethodTypes | nil,
        plan: WhopSDK::Payment::Plan | nil,
        product: WhopSDK::Payment::Product | nil,
        promo_code: WhopSDK::Payment::PromoCode | nil,
        refundable: WhopSDK::Internal::Type::Boolean,
        refunded_amount: Float | nil,
        refunded_at: Time | nil,
        retryable: WhopSDK::Internal::Type::Boolean,
        status: WhopSDK::ReceiptStatus | nil,
        substatus: WhopSDK::FriendlyReceiptStatus,
        subtotal: Float | nil,
        total: Float | nil,
        usd_total: Float | nil,
        user: WhopSDK::Payment::User | nil,
        voidable: WhopSDK::Internal::Type::Boolean
      }
    end
  end
end
