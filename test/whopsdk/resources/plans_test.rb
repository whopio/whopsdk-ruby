# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::PlansTest < Whopsdk::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.plans.create(company_id: "biz_xxxxxxxxxxxxxx", product_id: "prod_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Plan
    end

    assert_pattern do
      response => {
        id: String,
        billing_period: Integer | nil,
        collect_tax: Whopsdk::Internal::Type::Boolean,
        company: Whopsdk::Plan::Company | nil,
        created_at: Integer,
        currency: Whopsdk::Currency | nil,
        custom_fields: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Plan::CustomField]),
        description: String | nil,
        expiration_days: Integer | nil,
        initial_price: Float,
        internal_notes: String | nil,
        invoice: Whopsdk::Plan::Invoice | nil,
        member_count: Integer | nil,
        plan_type: Whopsdk::PlanType | nil,
        product: Whopsdk::Plan::Product | nil,
        purchase_link: String,
        release_method: Whopsdk::ReleaseMethod | nil,
        renewal_price: Float,
        tax_type: Whopsdk::TaxType | nil,
        trial_period_days: Integer | nil,
        updated_at: Integer,
        visibility: Whopsdk::Visibility | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.plans.retrieve("plan_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Plan
    end

    assert_pattern do
      response => {
        id: String,
        billing_period: Integer | nil,
        collect_tax: Whopsdk::Internal::Type::Boolean,
        company: Whopsdk::Plan::Company | nil,
        created_at: Integer,
        currency: Whopsdk::Currency | nil,
        custom_fields: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Plan::CustomField]),
        description: String | nil,
        expiration_days: Integer | nil,
        initial_price: Float,
        internal_notes: String | nil,
        invoice: Whopsdk::Plan::Invoice | nil,
        member_count: Integer | nil,
        plan_type: Whopsdk::PlanType | nil,
        product: Whopsdk::Plan::Product | nil,
        purchase_link: String,
        release_method: Whopsdk::ReleaseMethod | nil,
        renewal_price: Float,
        tax_type: Whopsdk::TaxType | nil,
        trial_period_days: Integer | nil,
        updated_at: Integer,
        visibility: Whopsdk::Visibility | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @whopsdk.plans.update("plan_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Plan
    end

    assert_pattern do
      response => {
        id: String,
        billing_period: Integer | nil,
        collect_tax: Whopsdk::Internal::Type::Boolean,
        company: Whopsdk::Plan::Company | nil,
        created_at: Integer,
        currency: Whopsdk::Currency | nil,
        custom_fields: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Plan::CustomField]),
        description: String | nil,
        expiration_days: Integer | nil,
        initial_price: Float,
        internal_notes: String | nil,
        invoice: Whopsdk::Plan::Invoice | nil,
        member_count: Integer | nil,
        plan_type: Whopsdk::PlanType | nil,
        product: Whopsdk::Plan::Product | nil,
        purchase_link: String,
        release_method: Whopsdk::ReleaseMethod | nil,
        renewal_price: Float,
        tax_type: Whopsdk::TaxType | nil,
        trial_period_days: Integer | nil,
        updated_at: Integer,
        visibility: Whopsdk::Visibility | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.plans.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::Models::PlanListResponse
    end

    assert_pattern do
      row => {
        id: String,
        billing_period: Integer | nil,
        company: Whopsdk::Models::PlanListResponse::Company | nil,
        created_at: Integer,
        currency: Whopsdk::Currency | nil,
        description: String | nil,
        expiration_days: Integer | nil,
        initial_price: Float,
        internal_notes: String | nil,
        invoice: Whopsdk::Models::PlanListResponse::Invoice | nil,
        member_count: Integer | nil,
        plan_type: Whopsdk::PlanType | nil,
        product: Whopsdk::Models::PlanListResponse::Product | nil,
        purchase_link: String,
        release_method: Whopsdk::ReleaseMethod | nil,
        renewal_price: Float,
        trial_period_days: Integer | nil,
        updated_at: Integer,
        visibility: Whopsdk::Visibility | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @whopsdk.plans.delete("plan_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::Type::Boolean
    end
  end
end
