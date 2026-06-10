# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::PlansTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.plans.create(product_id: "product_id")

    assert_pattern do
      response => WhopSDK::Plan
    end

    assert_pattern do
      response => {
        id: String,
        adaptive_pricing_enabled: WhopSDK::Internal::Type::Boolean,
        billing_period: Float | nil,
        collect_tax: WhopSDK::Internal::Type::Boolean,
        company: WhopSDK::Internal::Type::Unknown | nil,
        created_at: String,
        currency: WhopSDK::Plan::Currency,
        custom_fields: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]),
        description: String | nil,
        expiration_days: Float | nil,
        initial_price: Float,
        internal_notes: String | nil,
        invoice: WhopSDK::Internal::Type::Unknown | nil,
        member_count: Float | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        payment_method_configuration: WhopSDK::Internal::Type::Unknown | nil,
        plan_type: WhopSDK::Plan::PlanType,
        product: WhopSDK::Internal::Type::Unknown | nil,
        purchase_url: String,
        release_method: WhopSDK::Plan::ReleaseMethod,
        renewal_price: Float,
        split_pay_required_payments: Float | nil,
        stock: Float | nil,
        tax_type: String,
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
        adaptive_pricing_enabled: WhopSDK::Internal::Type::Boolean,
        billing_period: Float | nil,
        collect_tax: WhopSDK::Internal::Type::Boolean,
        company: WhopSDK::Internal::Type::Unknown | nil,
        created_at: String,
        currency: WhopSDK::Plan::Currency,
        custom_fields: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]),
        description: String | nil,
        expiration_days: Float | nil,
        initial_price: Float,
        internal_notes: String | nil,
        invoice: WhopSDK::Internal::Type::Unknown | nil,
        member_count: Float | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        payment_method_configuration: WhopSDK::Internal::Type::Unknown | nil,
        plan_type: WhopSDK::Plan::PlanType,
        product: WhopSDK::Internal::Type::Unknown | nil,
        purchase_url: String,
        release_method: WhopSDK::Plan::ReleaseMethod,
        renewal_price: Float,
        split_pay_required_payments: Float | nil,
        stock: Float | nil,
        tax_type: String,
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
        adaptive_pricing_enabled: WhopSDK::Internal::Type::Boolean,
        billing_period: Float | nil,
        collect_tax: WhopSDK::Internal::Type::Boolean,
        company: WhopSDK::Internal::Type::Unknown | nil,
        created_at: String,
        currency: WhopSDK::Plan::Currency,
        custom_fields: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]),
        description: String | nil,
        expiration_days: Float | nil,
        initial_price: Float,
        internal_notes: String | nil,
        invoice: WhopSDK::Internal::Type::Unknown | nil,
        member_count: Float | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        payment_method_configuration: WhopSDK::Internal::Type::Unknown | nil,
        plan_type: WhopSDK::Plan::PlanType,
        product: WhopSDK::Internal::Type::Unknown | nil,
        purchase_url: String,
        release_method: WhopSDK::Plan::ReleaseMethod,
        renewal_price: Float,
        split_pay_required_payments: Float | nil,
        stock: Float | nil,
        tax_type: String,
        three_ds_level: WhopSDK::Plan::ThreeDSLevel | nil,
        title: String | nil,
        trial_period_days: Float | nil,
        unlimited_stock: WhopSDK::Internal::Type::Boolean,
        updated_at: String,
        visibility: WhopSDK::Plan::Visibility
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.plans.list(company_id: "company_id")

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
        adaptive_pricing_enabled: WhopSDK::Internal::Type::Boolean,
        billing_period: Float | nil,
        company: WhopSDK::Internal::Type::Unknown | nil,
        created_at: String,
        currency: String,
        description: String | nil,
        expiration_days: Float | nil,
        initial_price: Float,
        internal_notes: String | nil,
        invoice: WhopSDK::Internal::Type::Unknown | nil,
        member_count: Float | nil,
        metadata: WhopSDK::Internal::Type::Unknown | nil,
        payment_method_configuration: WhopSDK::Internal::Type::Unknown | nil,
        plan_type: String,
        product: WhopSDK::Internal::Type::Unknown | nil,
        purchase_url: String,
        release_method: String,
        renewal_price: Float,
        split_pay_required_payments: Float | nil,
        stock: Float | nil,
        three_ds_level: String | nil,
        title: String | nil,
        trial_period_days: Float | nil,
        unlimited_stock: WhopSDK::Internal::Type::Boolean,
        updated_at: String,
        visibility: String
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.plans.delete("id")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end
end
