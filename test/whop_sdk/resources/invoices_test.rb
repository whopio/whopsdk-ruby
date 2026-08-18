# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::InvoicesTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @whop.invoices.create(
        body: {
          collection_method: :send_invoice,
          company_id: "biz_xxxxxxxxxxxxxx",
          plan: {},
          product: {title: "title"}
        }
      )

    assert_pattern do
      response => WhopSDK::Invoice
    end

    assert_pattern do
      response => {
        id: String,
        automatically_finalizes_at: Time | nil,
        charge_buyer_fee: WhopSDK::Internal::Type::Boolean,
        collection_method: WhopSDK::CollectionMethod,
        company: WhopSDK::Invoice::Company,
        created_at: Time,
        current_plan: WhopSDK::Invoice::CurrentPlan,
        customer_name: String | nil,
        due_date: Time | nil,
        email_address: String | nil,
        fetch_invoice_token: String,
        line_items: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Invoice::LineItem]),
        mailing_address: WhopSDK::Invoice::MailingAddress | nil,
        number: String,
        pay_online_url: String | nil,
        payment_processing: WhopSDK::Internal::Type::Boolean,
        product: WhopSDK::Invoice::Product,
        status: WhopSDK::InvoiceStatus,
        subscription_billing_anchor_at: Time | nil,
        updated_at: Time,
        user: WhopSDK::Invoice::User | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.invoices.retrieve("inv_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Invoice
    end

    assert_pattern do
      response => {
        id: String,
        automatically_finalizes_at: Time | nil,
        charge_buyer_fee: WhopSDK::Internal::Type::Boolean,
        collection_method: WhopSDK::CollectionMethod,
        company: WhopSDK::Invoice::Company,
        created_at: Time,
        current_plan: WhopSDK::Invoice::CurrentPlan,
        customer_name: String | nil,
        due_date: Time | nil,
        email_address: String | nil,
        fetch_invoice_token: String,
        line_items: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Invoice::LineItem]),
        mailing_address: WhopSDK::Invoice::MailingAddress | nil,
        number: String,
        pay_online_url: String | nil,
        payment_processing: WhopSDK::Internal::Type::Boolean,
        product: WhopSDK::Invoice::Product,
        status: WhopSDK::InvoiceStatus,
        subscription_billing_anchor_at: Time | nil,
        updated_at: Time,
        user: WhopSDK::Invoice::User | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.invoices.update("inv_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Invoice
    end

    assert_pattern do
      response => {
        id: String,
        automatically_finalizes_at: Time | nil,
        charge_buyer_fee: WhopSDK::Internal::Type::Boolean,
        collection_method: WhopSDK::CollectionMethod,
        company: WhopSDK::Invoice::Company,
        created_at: Time,
        current_plan: WhopSDK::Invoice::CurrentPlan,
        customer_name: String | nil,
        due_date: Time | nil,
        email_address: String | nil,
        fetch_invoice_token: String,
        line_items: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Invoice::LineItem]),
        mailing_address: WhopSDK::Invoice::MailingAddress | nil,
        number: String,
        pay_online_url: String | nil,
        payment_processing: WhopSDK::Internal::Type::Boolean,
        product: WhopSDK::Invoice::Product,
        status: WhopSDK::InvoiceStatus,
        subscription_billing_anchor_at: Time | nil,
        updated_at: Time,
        user: WhopSDK::Invoice::User | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.invoices.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::InvoiceListItem
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        current_plan: WhopSDK::InvoiceListItem::CurrentPlan,
        due_date: Time | nil,
        email_address: String | nil,
        fetch_invoice_token: String,
        line_items: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::InvoiceListItem::LineItem]),
        number: String,
        payment_processing: WhopSDK::Internal::Type::Boolean,
        status: WhopSDK::InvoiceStatus,
        user: WhopSDK::InvoiceListItem::User | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.invoices.delete("inv_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end

  def test_mark_paid
    skip("Mock server tests are disabled")

    response = @whop.invoices.mark_paid("inv_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end

  def test_mark_uncollectible
    skip("Mock server tests are disabled")

    response = @whop.invoices.mark_uncollectible("inv_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end

  def test_void
    skip("Mock server tests are disabled")

    response = @whop.invoices.void("inv_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end
end
