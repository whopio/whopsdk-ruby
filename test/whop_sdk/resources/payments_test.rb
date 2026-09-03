# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::PaymentsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.payments.create(account_id: "biz_xxxxxxxxxxxxxx", plan_id: "plan_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Payment
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String | nil,
        amount_after_fees: WhopSDK::Payment::AmountAfterFees,
        auto_refunded: WhopSDK::Internal::Type::Boolean,
        billing_address: WhopSDK::Payment::BillingAddress | nil,
        billing_reason: WhopSDK::BillingReasons | nil,
        checkout_configuration_id: String | nil,
        client_secret: String | nil,
        created_at: String,
        currency: WhopSDK::Currency,
        customer_phone: String | nil,
        decline_code: WhopSDK::Payment::DeclineCode | nil,
        dispute_alerted_at: String | nil,
        failure_message: String | nil,
        financing_installments_count: Float | nil,
        last_payment_attempt_at: String | nil,
        member_id: String | nil,
        membership_id: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        needs_tracking: WhopSDK::Internal::Type::Boolean | nil,
        next_payment_attempt_at: String | nil,
        paid_at: String | nil,
        payment_instrument: WhopSDK::Payment::PaymentInstrument | nil,
        payment_method_id: String | nil,
        payment_method_type: WhopSDK::PaymentMethodTypes | nil,
        payments_failed: Float,
        plan_id: String | nil,
        product_id: String | nil,
        promo_code_id: String | nil,
        refundable: WhopSDK::Internal::Type::Boolean,
        refunded_amount: WhopSDK::Payment::RefundedAmount | nil,
        refunded_at: String | nil,
        retryable: WhopSDK::Internal::Type::Boolean,
        risk_score: Float | nil,
        risk_signals: WhopSDK::Internal::Type::Unknown | nil,
        settlement_time_at: String | nil,
        shipment_id: String | nil,
        shipping_address: WhopSDK::Payment::ShippingAddress | nil,
        status: WhopSDK::ReceiptStatus,
        substatus: WhopSDK::FriendlyReceiptStatus,
        subtotal: WhopSDK::Payment::Subtotal | nil,
        tax_amount: WhopSDK::Payment::TaxAmount | nil,
        tax_behavior: WhopSDK::ReceiptTaxBehavior | nil,
        tax_refunded_amount: WhopSDK::Payment::TaxRefundedAmount,
        three_ds_verified: WhopSDK::Internal::Type::Boolean,
        total: WhopSDK::Payment::Total | nil,
        updated_at: String,
        usd_total: WhopSDK::Payment::UsdTotal | nil,
        user: WhopSDK::Payment::User | nil,
        verification_checks: WhopSDK::Payment::VerificationChecks | nil,
        voidable: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.payments.retrieve("id")

    assert_pattern do
      response => WhopSDK::Payment
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String | nil,
        amount_after_fees: WhopSDK::Payment::AmountAfterFees,
        auto_refunded: WhopSDK::Internal::Type::Boolean,
        billing_address: WhopSDK::Payment::BillingAddress | nil,
        billing_reason: WhopSDK::BillingReasons | nil,
        checkout_configuration_id: String | nil,
        client_secret: String | nil,
        created_at: String,
        currency: WhopSDK::Currency,
        customer_phone: String | nil,
        decline_code: WhopSDK::Payment::DeclineCode | nil,
        dispute_alerted_at: String | nil,
        failure_message: String | nil,
        financing_installments_count: Float | nil,
        last_payment_attempt_at: String | nil,
        member_id: String | nil,
        membership_id: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        needs_tracking: WhopSDK::Internal::Type::Boolean | nil,
        next_payment_attempt_at: String | nil,
        paid_at: String | nil,
        payment_instrument: WhopSDK::Payment::PaymentInstrument | nil,
        payment_method_id: String | nil,
        payment_method_type: WhopSDK::PaymentMethodTypes | nil,
        payments_failed: Float,
        plan_id: String | nil,
        product_id: String | nil,
        promo_code_id: String | nil,
        refundable: WhopSDK::Internal::Type::Boolean,
        refunded_amount: WhopSDK::Payment::RefundedAmount | nil,
        refunded_at: String | nil,
        retryable: WhopSDK::Internal::Type::Boolean,
        risk_score: Float | nil,
        risk_signals: WhopSDK::Internal::Type::Unknown | nil,
        settlement_time_at: String | nil,
        shipment_id: String | nil,
        shipping_address: WhopSDK::Payment::ShippingAddress | nil,
        status: WhopSDK::ReceiptStatus,
        substatus: WhopSDK::FriendlyReceiptStatus,
        subtotal: WhopSDK::Payment::Subtotal | nil,
        tax_amount: WhopSDK::Payment::TaxAmount | nil,
        tax_behavior: WhopSDK::ReceiptTaxBehavior | nil,
        tax_refunded_amount: WhopSDK::Payment::TaxRefundedAmount,
        three_ds_verified: WhopSDK::Internal::Type::Boolean,
        total: WhopSDK::Payment::Total | nil,
        updated_at: String,
        usd_total: WhopSDK::Payment::UsdTotal | nil,
        user: WhopSDK::Payment::User | nil,
        verification_checks: WhopSDK::Payment::VerificationChecks | nil,
        voidable: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.payments.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Payment
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String | nil,
        amount_after_fees: WhopSDK::Payment::AmountAfterFees,
        auto_refunded: WhopSDK::Internal::Type::Boolean,
        billing_address: WhopSDK::Payment::BillingAddress | nil,
        billing_reason: WhopSDK::BillingReasons | nil,
        checkout_configuration_id: String | nil,
        client_secret: String | nil,
        created_at: String,
        currency: WhopSDK::Currency,
        customer_phone: String | nil,
        decline_code: WhopSDK::Payment::DeclineCode | nil,
        dispute_alerted_at: String | nil,
        failure_message: String | nil,
        financing_installments_count: Float | nil,
        last_payment_attempt_at: String | nil,
        member_id: String | nil,
        membership_id: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        needs_tracking: WhopSDK::Internal::Type::Boolean | nil,
        next_payment_attempt_at: String | nil,
        paid_at: String | nil,
        payment_instrument: WhopSDK::Payment::PaymentInstrument | nil,
        payment_method_id: String | nil,
        payment_method_type: WhopSDK::PaymentMethodTypes | nil,
        payments_failed: Float,
        plan_id: String | nil,
        product_id: String | nil,
        promo_code_id: String | nil,
        refundable: WhopSDK::Internal::Type::Boolean,
        refunded_amount: WhopSDK::Payment::RefundedAmount | nil,
        refunded_at: String | nil,
        retryable: WhopSDK::Internal::Type::Boolean,
        risk_score: Float | nil,
        risk_signals: WhopSDK::Internal::Type::Unknown | nil,
        settlement_time_at: String | nil,
        shipment_id: String | nil,
        shipping_address: WhopSDK::Payment::ShippingAddress | nil,
        status: WhopSDK::ReceiptStatus,
        substatus: WhopSDK::FriendlyReceiptStatus,
        subtotal: WhopSDK::Payment::Subtotal | nil,
        tax_amount: WhopSDK::Payment::TaxAmount | nil,
        tax_behavior: WhopSDK::ReceiptTaxBehavior | nil,
        tax_refunded_amount: WhopSDK::Payment::TaxRefundedAmount,
        three_ds_verified: WhopSDK::Internal::Type::Boolean,
        total: WhopSDK::Payment::Total | nil,
        updated_at: String,
        usd_total: WhopSDK::Payment::UsdTotal | nil,
        user: WhopSDK::Payment::User | nil,
        verification_checks: WhopSDK::Payment::VerificationChecks | nil,
        voidable: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_list_fees
    skip("Mock server tests are disabled")

    response = @whop.payments.list_fees("id")

    assert_pattern do
      response => WhopSDK::Models::PaymentListFeesResponse
    end

    assert_pattern do
      response => {
        data: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::PaymentListFeesResponse::Data]),
        page_info: WhopSDK::Models::PaymentListFeesResponse::PageInfo
      }
    end
  end

  def test_refund
    skip("Mock server tests are disabled")

    response = @whop.payments.refund("id")

    assert_pattern do
      response => WhopSDK::Payment
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String | nil,
        amount_after_fees: WhopSDK::Payment::AmountAfterFees,
        auto_refunded: WhopSDK::Internal::Type::Boolean,
        billing_address: WhopSDK::Payment::BillingAddress | nil,
        billing_reason: WhopSDK::BillingReasons | nil,
        checkout_configuration_id: String | nil,
        client_secret: String | nil,
        created_at: String,
        currency: WhopSDK::Currency,
        customer_phone: String | nil,
        decline_code: WhopSDK::Payment::DeclineCode | nil,
        dispute_alerted_at: String | nil,
        failure_message: String | nil,
        financing_installments_count: Float | nil,
        last_payment_attempt_at: String | nil,
        member_id: String | nil,
        membership_id: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        needs_tracking: WhopSDK::Internal::Type::Boolean | nil,
        next_payment_attempt_at: String | nil,
        paid_at: String | nil,
        payment_instrument: WhopSDK::Payment::PaymentInstrument | nil,
        payment_method_id: String | nil,
        payment_method_type: WhopSDK::PaymentMethodTypes | nil,
        payments_failed: Float,
        plan_id: String | nil,
        product_id: String | nil,
        promo_code_id: String | nil,
        refundable: WhopSDK::Internal::Type::Boolean,
        refunded_amount: WhopSDK::Payment::RefundedAmount | nil,
        refunded_at: String | nil,
        retryable: WhopSDK::Internal::Type::Boolean,
        risk_score: Float | nil,
        risk_signals: WhopSDK::Internal::Type::Unknown | nil,
        settlement_time_at: String | nil,
        shipment_id: String | nil,
        shipping_address: WhopSDK::Payment::ShippingAddress | nil,
        status: WhopSDK::ReceiptStatus,
        substatus: WhopSDK::FriendlyReceiptStatus,
        subtotal: WhopSDK::Payment::Subtotal | nil,
        tax_amount: WhopSDK::Payment::TaxAmount | nil,
        tax_behavior: WhopSDK::ReceiptTaxBehavior | nil,
        tax_refunded_amount: WhopSDK::Payment::TaxRefundedAmount,
        three_ds_verified: WhopSDK::Internal::Type::Boolean,
        total: WhopSDK::Payment::Total | nil,
        updated_at: String,
        usd_total: WhopSDK::Payment::UsdTotal | nil,
        user: WhopSDK::Payment::User | nil,
        verification_checks: WhopSDK::Payment::VerificationChecks | nil,
        voidable: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_retry_
    skip("Mock server tests are disabled")

    response = @whop.payments.retry_("id")

    assert_pattern do
      response => WhopSDK::Payment
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String | nil,
        amount_after_fees: WhopSDK::Payment::AmountAfterFees,
        auto_refunded: WhopSDK::Internal::Type::Boolean,
        billing_address: WhopSDK::Payment::BillingAddress | nil,
        billing_reason: WhopSDK::BillingReasons | nil,
        checkout_configuration_id: String | nil,
        client_secret: String | nil,
        created_at: String,
        currency: WhopSDK::Currency,
        customer_phone: String | nil,
        decline_code: WhopSDK::Payment::DeclineCode | nil,
        dispute_alerted_at: String | nil,
        failure_message: String | nil,
        financing_installments_count: Float | nil,
        last_payment_attempt_at: String | nil,
        member_id: String | nil,
        membership_id: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        needs_tracking: WhopSDK::Internal::Type::Boolean | nil,
        next_payment_attempt_at: String | nil,
        paid_at: String | nil,
        payment_instrument: WhopSDK::Payment::PaymentInstrument | nil,
        payment_method_id: String | nil,
        payment_method_type: WhopSDK::PaymentMethodTypes | nil,
        payments_failed: Float,
        plan_id: String | nil,
        product_id: String | nil,
        promo_code_id: String | nil,
        refundable: WhopSDK::Internal::Type::Boolean,
        refunded_amount: WhopSDK::Payment::RefundedAmount | nil,
        refunded_at: String | nil,
        retryable: WhopSDK::Internal::Type::Boolean,
        risk_score: Float | nil,
        risk_signals: WhopSDK::Internal::Type::Unknown | nil,
        settlement_time_at: String | nil,
        shipment_id: String | nil,
        shipping_address: WhopSDK::Payment::ShippingAddress | nil,
        status: WhopSDK::ReceiptStatus,
        substatus: WhopSDK::FriendlyReceiptStatus,
        subtotal: WhopSDK::Payment::Subtotal | nil,
        tax_amount: WhopSDK::Payment::TaxAmount | nil,
        tax_behavior: WhopSDK::ReceiptTaxBehavior | nil,
        tax_refunded_amount: WhopSDK::Payment::TaxRefundedAmount,
        three_ds_verified: WhopSDK::Internal::Type::Boolean,
        total: WhopSDK::Payment::Total | nil,
        updated_at: String,
        usd_total: WhopSDK::Payment::UsdTotal | nil,
        user: WhopSDK::Payment::User | nil,
        verification_checks: WhopSDK::Payment::VerificationChecks | nil,
        voidable: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_void
    skip("Mock server tests are disabled")

    response = @whop.payments.void("id")

    assert_pattern do
      response => WhopSDK::Payment
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String | nil,
        amount_after_fees: WhopSDK::Payment::AmountAfterFees,
        auto_refunded: WhopSDK::Internal::Type::Boolean,
        billing_address: WhopSDK::Payment::BillingAddress | nil,
        billing_reason: WhopSDK::BillingReasons | nil,
        checkout_configuration_id: String | nil,
        client_secret: String | nil,
        created_at: String,
        currency: WhopSDK::Currency,
        customer_phone: String | nil,
        decline_code: WhopSDK::Payment::DeclineCode | nil,
        dispute_alerted_at: String | nil,
        failure_message: String | nil,
        financing_installments_count: Float | nil,
        last_payment_attempt_at: String | nil,
        member_id: String | nil,
        membership_id: String | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        needs_tracking: WhopSDK::Internal::Type::Boolean | nil,
        next_payment_attempt_at: String | nil,
        paid_at: String | nil,
        payment_instrument: WhopSDK::Payment::PaymentInstrument | nil,
        payment_method_id: String | nil,
        payment_method_type: WhopSDK::PaymentMethodTypes | nil,
        payments_failed: Float,
        plan_id: String | nil,
        product_id: String | nil,
        promo_code_id: String | nil,
        refundable: WhopSDK::Internal::Type::Boolean,
        refunded_amount: WhopSDK::Payment::RefundedAmount | nil,
        refunded_at: String | nil,
        retryable: WhopSDK::Internal::Type::Boolean,
        risk_score: Float | nil,
        risk_signals: WhopSDK::Internal::Type::Unknown | nil,
        settlement_time_at: String | nil,
        shipment_id: String | nil,
        shipping_address: WhopSDK::Payment::ShippingAddress | nil,
        status: WhopSDK::ReceiptStatus,
        substatus: WhopSDK::FriendlyReceiptStatus,
        subtotal: WhopSDK::Payment::Subtotal | nil,
        tax_amount: WhopSDK::Payment::TaxAmount | nil,
        tax_behavior: WhopSDK::ReceiptTaxBehavior | nil,
        tax_refunded_amount: WhopSDK::Payment::TaxRefundedAmount,
        three_ds_verified: WhopSDK::Internal::Type::Boolean,
        total: WhopSDK::Payment::Total | nil,
        updated_at: String,
        usd_total: WhopSDK::Payment::UsdTotal | nil,
        user: WhopSDK::Payment::User | nil,
        verification_checks: WhopSDK::Payment::VerificationChecks | nil,
        voidable: WhopSDK::Internal::Type::Boolean
      }
    end
  end
end
