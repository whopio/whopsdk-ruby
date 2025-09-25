# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::InvoicesTest < Whopsdk::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.invoices.create(collection_method: :send_invoice, due_date: 1_701_406_800, plan: {})

    assert_pattern do
      response => Whopsdk::Models::InvoiceCreateResponse
    end

    assert_pattern do
      response => {
        checkout_job_id: String | nil,
        invoice: Whopsdk::Invoice | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.invoices.retrieve("inv_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Invoice
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Integer,
        current_plan: Whopsdk::Invoice::CurrentPlan,
        due_date: Integer | nil,
        email_address: String | nil,
        fetch_invoice_token: String,
        number: String,
        status: Whopsdk::InvoiceStatus | nil,
        user: Whopsdk::Invoice::User | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.invoices.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Models::InvoiceListResponse
    end

    assert_pattern do
      response => {
        data: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Models::InvoiceListResponse::Data, nil?: true]) | nil,
        page_info: Whopsdk::PageInfo
      }
    end
  end

  def test_void
    skip("Prism tests are disabled")

    response = @whopsdk.invoices.void("inv_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::Type::Boolean
    end
  end
end
