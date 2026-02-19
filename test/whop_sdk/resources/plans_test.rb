# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::PlansTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.plans.create(company_id: "biz_xxxxxxxxxxxxxx", product_id: "prod_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Plan
    end

    assert_pattern do
      response => {
        id: String,
        billing_period: Integer | nil,
        collect_tax: WhopSDK::Internal::Type::Boolean,
        company: WhopSDK::Plan::Company | nil,
        created_at: Time,
        currency: WhopSDK::Currency,
        custom_fields: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Plan::CustomField]),
        description: String | nil,
        expiration_days: Integer | nil,
        initial_price: Float,
        internal_notes: String | nil,
        invoice: WhopSDK::Plan::Invoice | nil,
        member_count: Integer | nil,
        payment_method_configuration: WhopSDK::Plan::PaymentMethodConfiguration | nil,
        plan_type: WhopSDK::PlanType,
        product: WhopSDK::Plan::Product | nil,
        purchase_url: String,
        release_method: WhopSDK::ReleaseMethod,
        renewal_price: Float,
        split_pay_required_payments: Integer | nil,
        stock: Integer | nil,
        tax_type: WhopSDK::TaxType,
        title: String | nil,
        trial_period_days: Integer | nil,
        unlimited_stock: WhopSDK::Internal::Type::Boolean,
        updated_at: Time,
        visibility: WhopSDK::Visibility
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.plans.retrieve("plan_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Plan
    end

    assert_pattern do
      response => {
        id: String,
        billing_period: Integer | nil,
        collect_tax: WhopSDK::Internal::Type::Boolean,
        company: WhopSDK::Plan::Company | nil,
        created_at: Time,
        currency: WhopSDK::Currency,
        custom_fields: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Plan::CustomField]),
        description: String | nil,
        expiration_days: Integer | nil,
        initial_price: Float,
        internal_notes: String | nil,
        invoice: WhopSDK::Plan::Invoice | nil,
        member_count: Integer | nil,
        payment_method_configuration: WhopSDK::Plan::PaymentMethodConfiguration | nil,
        plan_type: WhopSDK::PlanType,
        product: WhopSDK::Plan::Product | nil,
        purchase_url: String,
        release_method: WhopSDK::ReleaseMethod,
        renewal_price: Float,
        split_pay_required_payments: Integer | nil,
        stock: Integer | nil,
        tax_type: WhopSDK::TaxType,
        title: String | nil,
        trial_period_days: Integer | nil,
        unlimited_stock: WhopSDK::Internal::Type::Boolean,
        updated_at: Time,
        visibility: WhopSDK::Visibility
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.plans.update("plan_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Plan
    end

    assert_pattern do
      response => {
        id: String,
        billing_period: Integer | nil,
        collect_tax: WhopSDK::Internal::Type::Boolean,
        company: WhopSDK::Plan::Company | nil,
        created_at: Time,
        currency: WhopSDK::Currency,
        custom_fields: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Plan::CustomField]),
        description: String | nil,
        expiration_days: Integer | nil,
        initial_price: Float,
        internal_notes: String | nil,
        invoice: WhopSDK::Plan::Invoice | nil,
        member_count: Integer | nil,
        payment_method_configuration: WhopSDK::Plan::PaymentMethodConfiguration | nil,
        plan_type: WhopSDK::PlanType,
        product: WhopSDK::Plan::Product | nil,
        purchase_url: String,
        release_method: WhopSDK::ReleaseMethod,
        renewal_price: Float,
        split_pay_required_payments: Integer | nil,
        stock: Integer | nil,
        tax_type: WhopSDK::TaxType,
        title: String | nil,
        trial_period_days: Integer | nil,
        unlimited_stock: WhopSDK::Internal::Type::Boolean,
        updated_at: Time,
        visibility: WhopSDK::Visibility
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.plans.list(company_id: "biz_xxxxxxxxxxxxxx")

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
        billing_period: Integer | nil,
        company: WhopSDK::Models::PlanListResponse::Company | nil,
        created_at: Time,
        currency: WhopSDK::Currency,
        description: String | nil,
        expiration_days: Integer | nil,
        initial_price: Float,
        internal_notes: String | nil,
        invoice: WhopSDK::Models::PlanListResponse::Invoice | nil,
        member_count: Integer | nil,
        payment_method_configuration: WhopSDK::Models::PlanListResponse::PaymentMethodConfiguration | nil,
        plan_type: WhopSDK::PlanType,
        product: WhopSDK::Models::PlanListResponse::Product | nil,
        purchase_url: String,
        release_method: WhopSDK::ReleaseMethod,
        renewal_price: Float,
        split_pay_required_payments: Integer | nil,
        stock: Integer | nil,
        title: String | nil,
        trial_period_days: Integer | nil,
        unlimited_stock: WhopSDK::Internal::Type::Boolean,
        updated_at: Time,
        visibility: WhopSDK::Visibility
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.plans.delete("plan_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end
end
