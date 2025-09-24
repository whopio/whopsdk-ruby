# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::InvoicesTest < Whopsdk::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.invoices.create(collection_method: :send_invoice, due_date: 0, plan: {})

    assert_pattern do
      response => Whopsdk::Models::InvoiceCreateResponse
    end

    assert_pattern do
      response => {
        checkout_job_id: String | nil,
        invoice: Whopsdk::Models::InvoiceCreateResponse::Invoice | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.invoices.retrieve("id")

    assert_pattern do
      response => Whopsdk::Models::InvoiceRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Integer,
        current_plan: Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan,
        due_date: Integer | nil,
        email_address: String | nil,
        fetch_invoice_token: String,
        member: Whopsdk::Models::InvoiceRetrieveResponse::Member | nil,
        number: String,
        status: Whopsdk::Models::InvoiceRetrieveResponse::Status
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.invoices.list(company_id: "company_id")

    assert_pattern do
      response => Whopsdk::Models::InvoiceListResponse
    end

    assert_pattern do
      response => {
        data: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Models::InvoiceListResponse::Data, nil?: true]) | nil,
        page_info: Whopsdk::Models::InvoiceListResponse::PageInfo
      }
    end
  end

  def test_void
    skip("Prism tests are disabled")

    response = @whopsdk.invoices.void("id")

    assert_pattern do
      response => Whopsdk::Internal::Type::Boolean
    end
  end
end
