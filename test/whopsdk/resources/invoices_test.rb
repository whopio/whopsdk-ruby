# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::InvoicesTest < Whopsdk::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @whop.invoices.create(
        collection_method: :send_invoice,
        company_id: "biz_xxxxxxxxxxxxxx",
        due_date: "2023-12-01T05:00:00.401Z",
        plan: {}
      )

    assert_pattern do
      response => Whopsdk::Models::InvoiceCreateResponse
    end

    assert_pattern do
      response => {
        checkout_job_id: String | nil,
        invoice: Whopsdk::Invoice
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.invoices.retrieve("inv_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Invoice
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        current_plan: Whopsdk::Invoice::CurrentPlan,
        due_date: Time | nil,
        email_address: String | nil,
        fetch_invoice_token: String,
        number: String,
        status: Whopsdk::InvoiceStatus,
        user: Whopsdk::Invoice::User | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.invoices.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::InvoiceListItem
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        current_plan: Whopsdk::InvoiceListItem::CurrentPlan,
        due_date: Time | nil,
        email_address: String | nil,
        fetch_invoice_token: String,
        number: String,
        status: Whopsdk::InvoiceStatus,
        user: Whopsdk::InvoiceListItem::User | nil
      }
    end
  end

  def test_void
    skip("Prism tests are disabled")

    response = @whop.invoices.void("inv_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::Type::Boolean
    end
  end
end
