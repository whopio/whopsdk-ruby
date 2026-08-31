# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::PlansTest < WhopSDK::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @whop.plans.create

    assert_pattern do
      response => WhopSDK::Plan
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::Plan::Account | nil,
        adaptive_pricing_enabled: WhopSDK::Internal::Type::Boolean,
        billing_period: Float | nil,
        cancel_discount_intervals: Float | nil,
        cancel_discount_percentage: Float | nil,
        checkout_styling: WhopSDK::Internal::Type::Unknown | nil,
        collect_tax: WhopSDK::Internal::Type::Boolean,
        created_at: String,
        currency: WhopSDK::Plan::Currency,
        custom_fields: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Plan::CustomField]),
        deletable: WhopSDK::Internal::Type::Boolean | nil,
        description: String | nil,
        effective_payment_method_configuration: WhopSDK::Plan::EffectivePaymentMethodConfiguration | nil,
        expiration_days: Float | nil,
        formatted_price: String,
        image: WhopSDK::Internal::Type::Unknown | nil,
        initial_price: Float,
        internal_notes: String | nil,
        invoice: WhopSDK::Internal::Type::Unknown | nil,
        member_count: Float | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        offer_cancel_discount: WhopSDK::Internal::Type::Boolean | nil,
        payment_method_configuration: WhopSDK::Internal::Type::Unknown | nil,
        plan_type: WhopSDK::Plan::PlanType,
        product: WhopSDK::Internal::Type::Unknown | nil,
        purchase_url: String,
        release_method: WhopSDK::Plan::ReleaseMethod,
        renewal_price: Float,
        split_pay_required_payments: Float | nil,
        stock: Float | nil,
        strike_through_initial_price: Float | nil,
        strike_through_renewal_price: Float | nil,
        tax_type: WhopSDK::Plan::TaxType,
        three_ds_level: WhopSDK::Plan::ThreeDSLevel | nil,
        title: String | nil,
        trial_period_days: Float | nil,
        unlimited_stock: WhopSDK::Internal::Type::Boolean,
        updated_at: String,
        visibility: WhopSDK::Plan::Visibility
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.plans.retrieve("id")

    assert_pattern do
      response => WhopSDK::Plan
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::Plan::Account | nil,
        adaptive_pricing_enabled: WhopSDK::Internal::Type::Boolean,
        billing_period: Float | nil,
        cancel_discount_intervals: Float | nil,
        cancel_discount_percentage: Float | nil,
        checkout_styling: WhopSDK::Internal::Type::Unknown | nil,
        collect_tax: WhopSDK::Internal::Type::Boolean,
        created_at: String,
        currency: WhopSDK::Plan::Currency,
        custom_fields: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Plan::CustomField]),
        deletable: WhopSDK::Internal::Type::Boolean | nil,
        description: String | nil,
        effective_payment_method_configuration: WhopSDK::Plan::EffectivePaymentMethodConfiguration | nil,
        expiration_days: Float | nil,
        formatted_price: String,
        image: WhopSDK::Internal::Type::Unknown | nil,
        initial_price: Float,
        internal_notes: String | nil,
        invoice: WhopSDK::Internal::Type::Unknown | nil,
        member_count: Float | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        offer_cancel_discount: WhopSDK::Internal::Type::Boolean | nil,
        payment_method_configuration: WhopSDK::Internal::Type::Unknown | nil,
        plan_type: WhopSDK::Plan::PlanType,
        product: WhopSDK::Internal::Type::Unknown | nil,
        purchase_url: String,
        release_method: WhopSDK::Plan::ReleaseMethod,
        renewal_price: Float,
        split_pay_required_payments: Float | nil,
        stock: Float | nil,
        strike_through_initial_price: Float | nil,
        strike_through_renewal_price: Float | nil,
        tax_type: WhopSDK::Plan::TaxType,
        three_ds_level: WhopSDK::Plan::ThreeDSLevel | nil,
        title: String | nil,
        trial_period_days: Float | nil,
        unlimited_stock: WhopSDK::Internal::Type::Boolean,
        updated_at: String,
        visibility: WhopSDK::Plan::Visibility
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.plans.update("id")

    assert_pattern do
      response => WhopSDK::Plan
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::Plan::Account | nil,
        adaptive_pricing_enabled: WhopSDK::Internal::Type::Boolean,
        billing_period: Float | nil,
        cancel_discount_intervals: Float | nil,
        cancel_discount_percentage: Float | nil,
        checkout_styling: WhopSDK::Internal::Type::Unknown | nil,
        collect_tax: WhopSDK::Internal::Type::Boolean,
        created_at: String,
        currency: WhopSDK::Plan::Currency,
        custom_fields: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Plan::CustomField]),
        deletable: WhopSDK::Internal::Type::Boolean | nil,
        description: String | nil,
        effective_payment_method_configuration: WhopSDK::Plan::EffectivePaymentMethodConfiguration | nil,
        expiration_days: Float | nil,
        formatted_price: String,
        image: WhopSDK::Internal::Type::Unknown | nil,
        initial_price: Float,
        internal_notes: String | nil,
        invoice: WhopSDK::Internal::Type::Unknown | nil,
        member_count: Float | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        offer_cancel_discount: WhopSDK::Internal::Type::Boolean | nil,
        payment_method_configuration: WhopSDK::Internal::Type::Unknown | nil,
        plan_type: WhopSDK::Plan::PlanType,
        product: WhopSDK::Internal::Type::Unknown | nil,
        purchase_url: String,
        release_method: WhopSDK::Plan::ReleaseMethod,
        renewal_price: Float,
        split_pay_required_payments: Float | nil,
        stock: Float | nil,
        strike_through_initial_price: Float | nil,
        strike_through_renewal_price: Float | nil,
        tax_type: WhopSDK::Plan::TaxType,
        three_ds_level: WhopSDK::Plan::ThreeDSLevel | nil,
        title: String | nil,
        trial_period_days: Float | nil,
        unlimited_stock: WhopSDK::Internal::Type::Boolean,
        updated_at: String,
        visibility: WhopSDK::Plan::Visibility
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.plans.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::PlanListResponse
    end

    assert_pattern do
      row => {
        id: String,
        account: WhopSDK::Models::PlanListResponse::Account | nil,
        adaptive_pricing_enabled: WhopSDK::Internal::Type::Boolean,
        billing_period: Float | nil,
        cancel_discount_intervals: Float | nil,
        cancel_discount_percentage: Float | nil,
        checkout_styling: WhopSDK::Internal::Type::Unknown | nil,
        created_at: String,
        currency: String,
        custom_fields: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::PlanListResponse::CustomField]),
        description: String | nil,
        expiration_days: Float | nil,
        formatted_price: String,
        image: WhopSDK::Internal::Type::Unknown | nil,
        initial_price: Float,
        internal_notes: String | nil,
        invoice: WhopSDK::Internal::Type::Unknown | nil,
        member_count: Float | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        offer_cancel_discount: WhopSDK::Internal::Type::Boolean | nil,
        payment_method_configuration: WhopSDK::Internal::Type::Unknown | nil,
        plan_type: WhopSDK::Models::PlanListResponse::PlanType,
        product: WhopSDK::Internal::Type::Unknown | nil,
        purchase_url: String,
        release_method: WhopSDK::Models::PlanListResponse::ReleaseMethod,
        renewal_price: Float,
        split_pay_required_payments: Float | nil,
        stock: Float | nil,
        strike_through_initial_price: Float | nil,
        strike_through_renewal_price: Float | nil,
        three_ds_level: WhopSDK::Models::PlanListResponse::ThreeDSLevel | nil,
        title: String | nil,
        trial_period_days: Float | nil,
        unlimited_stock: WhopSDK::Internal::Type::Boolean,
        updated_at: String,
        visibility: WhopSDK::Models::PlanListResponse::Visibility
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.plans.delete("id")

    assert_pattern do
      response => WhopSDK::Models::PlanDeleteResponse
    end

    assert_pattern do
      response => {
        id: String,
        deleted: WhopSDK::Internal::Type::Boolean
      }
    end
  end
end
