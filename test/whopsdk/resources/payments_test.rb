# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::PaymentsTest < Whopsdk::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.payments.retrieve("pay_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Payment
    end

    assert_pattern do
      response => {
        id: String,
        amount_after_fees: Float,
        auto_refunded: Whopsdk::Internal::Type::Boolean,
        billing_address: Whopsdk::Payment::BillingAddress | nil,
        billing_reason: String | nil,
        card_brand: String | nil,
        card_last4: String | nil,
        company: Whopsdk::Payment::Company | nil,
        created_at: Integer,
        currency: Whopsdk::Currency | nil,
        dispute_alerted_at: Integer | nil,
        failure_message: String | nil,
        last_payment_attempt: Integer | nil,
        member: Whopsdk::Payment::Member | nil,
        membership: Whopsdk::Payment::Membership | nil,
        paid_at: Integer | nil,
        payment_method_type: String | nil,
        plan: Whopsdk::Payment::Plan | nil,
        product: Whopsdk::Payment::Product | nil,
        promo_code: Whopsdk::Payment::PromoCode | nil,
        refundable: Whopsdk::Internal::Type::Boolean,
        refunded_amount: Float | nil,
        refunded_at: Integer | nil,
        retryable: Whopsdk::Internal::Type::Boolean,
        status: Whopsdk::ReceiptStatus | nil,
        substatus: Whopsdk::FriendlyReceiptStatus,
        subtotal: Float | nil,
        total: Float | nil,
        usd_total: Float | nil,
        user: Whopsdk::Payment::User | nil,
        voidable: Whopsdk::Internal::Type::Boolean
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.payments.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::Models::PaymentListResponse
    end

    assert_pattern do
      row => {
        id: String,
        amount_after_fees: Float,
        auto_refunded: Whopsdk::Internal::Type::Boolean,
        billing_address: Whopsdk::Models::PaymentListResponse::BillingAddress | nil,
        billing_reason: String | nil,
        card_brand: String | nil,
        card_last4: String | nil,
        company: Whopsdk::Models::PaymentListResponse::Company | nil,
        created_at: Integer,
        currency: Whopsdk::Currency | nil,
        dispute_alerted_at: Integer | nil,
        failure_message: String | nil,
        last_payment_attempt: Integer | nil,
        member: Whopsdk::Models::PaymentListResponse::Member | nil,
        membership: Whopsdk::Models::PaymentListResponse::Membership | nil,
        paid_at: Integer | nil,
        payment_method_type: String | nil,
        plan: Whopsdk::Models::PaymentListResponse::Plan | nil,
        product: Whopsdk::Models::PaymentListResponse::Product | nil,
        promo_code: Whopsdk::Models::PaymentListResponse::PromoCode | nil,
        refundable: Whopsdk::Internal::Type::Boolean,
        refunded_amount: Float | nil,
        refunded_at: Integer | nil,
        retryable: Whopsdk::Internal::Type::Boolean,
        status: Whopsdk::ReceiptStatus | nil,
        substatus: Whopsdk::FriendlyReceiptStatus,
        subtotal: Float | nil,
        total: Float | nil,
        usd_total: Float | nil,
        user: Whopsdk::Models::PaymentListResponse::User | nil,
        voidable: Whopsdk::Internal::Type::Boolean
      }
    end
  end

  def test_refund
    skip("Prism tests are disabled")

    response = @whopsdk.payments.refund("pay_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Payment
    end

    assert_pattern do
      response => {
        id: String,
        amount_after_fees: Float,
        auto_refunded: Whopsdk::Internal::Type::Boolean,
        billing_address: Whopsdk::Payment::BillingAddress | nil,
        billing_reason: String | nil,
        card_brand: String | nil,
        card_last4: String | nil,
        company: Whopsdk::Payment::Company | nil,
        created_at: Integer,
        currency: Whopsdk::Currency | nil,
        dispute_alerted_at: Integer | nil,
        failure_message: String | nil,
        last_payment_attempt: Integer | nil,
        member: Whopsdk::Payment::Member | nil,
        membership: Whopsdk::Payment::Membership | nil,
        paid_at: Integer | nil,
        payment_method_type: String | nil,
        plan: Whopsdk::Payment::Plan | nil,
        product: Whopsdk::Payment::Product | nil,
        promo_code: Whopsdk::Payment::PromoCode | nil,
        refundable: Whopsdk::Internal::Type::Boolean,
        refunded_amount: Float | nil,
        refunded_at: Integer | nil,
        retryable: Whopsdk::Internal::Type::Boolean,
        status: Whopsdk::ReceiptStatus | nil,
        substatus: Whopsdk::FriendlyReceiptStatus,
        subtotal: Float | nil,
        total: Float | nil,
        usd_total: Float | nil,
        user: Whopsdk::Payment::User | nil,
        voidable: Whopsdk::Internal::Type::Boolean
      }
    end
  end

  def test_retry_
    skip("Prism tests are disabled")

    response = @whopsdk.payments.retry_("pay_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Payment
    end

    assert_pattern do
      response => {
        id: String,
        amount_after_fees: Float,
        auto_refunded: Whopsdk::Internal::Type::Boolean,
        billing_address: Whopsdk::Payment::BillingAddress | nil,
        billing_reason: String | nil,
        card_brand: String | nil,
        card_last4: String | nil,
        company: Whopsdk::Payment::Company | nil,
        created_at: Integer,
        currency: Whopsdk::Currency | nil,
        dispute_alerted_at: Integer | nil,
        failure_message: String | nil,
        last_payment_attempt: Integer | nil,
        member: Whopsdk::Payment::Member | nil,
        membership: Whopsdk::Payment::Membership | nil,
        paid_at: Integer | nil,
        payment_method_type: String | nil,
        plan: Whopsdk::Payment::Plan | nil,
        product: Whopsdk::Payment::Product | nil,
        promo_code: Whopsdk::Payment::PromoCode | nil,
        refundable: Whopsdk::Internal::Type::Boolean,
        refunded_amount: Float | nil,
        refunded_at: Integer | nil,
        retryable: Whopsdk::Internal::Type::Boolean,
        status: Whopsdk::ReceiptStatus | nil,
        substatus: Whopsdk::FriendlyReceiptStatus,
        subtotal: Float | nil,
        total: Float | nil,
        usd_total: Float | nil,
        user: Whopsdk::Payment::User | nil,
        voidable: Whopsdk::Internal::Type::Boolean
      }
    end
  end

  def test_void
    skip("Prism tests are disabled")

    response = @whopsdk.payments.void("pay_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Payment
    end

    assert_pattern do
      response => {
        id: String,
        amount_after_fees: Float,
        auto_refunded: Whopsdk::Internal::Type::Boolean,
        billing_address: Whopsdk::Payment::BillingAddress | nil,
        billing_reason: String | nil,
        card_brand: String | nil,
        card_last4: String | nil,
        company: Whopsdk::Payment::Company | nil,
        created_at: Integer,
        currency: Whopsdk::Currency | nil,
        dispute_alerted_at: Integer | nil,
        failure_message: String | nil,
        last_payment_attempt: Integer | nil,
        member: Whopsdk::Payment::Member | nil,
        membership: Whopsdk::Payment::Membership | nil,
        paid_at: Integer | nil,
        payment_method_type: String | nil,
        plan: Whopsdk::Payment::Plan | nil,
        product: Whopsdk::Payment::Product | nil,
        promo_code: Whopsdk::Payment::PromoCode | nil,
        refundable: Whopsdk::Internal::Type::Boolean,
        refunded_amount: Float | nil,
        refunded_at: Integer | nil,
        retryable: Whopsdk::Internal::Type::Boolean,
        status: Whopsdk::ReceiptStatus | nil,
        substatus: Whopsdk::FriendlyReceiptStatus,
        subtotal: Float | nil,
        total: Float | nil,
        usd_total: Float | nil,
        user: Whopsdk::Payment::User | nil,
        voidable: Whopsdk::Internal::Type::Boolean
      }
    end
  end
end
