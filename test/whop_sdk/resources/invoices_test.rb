# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::InvoicesTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @whop.invoices.create(
        collection_method: :send_invoice,
        company_id: "biz_xxxxxxxxxxxxxx",
        due_date: "2023-12-01T05:00:00.401Z",
        member_id: "mber_xxxxxxxxxxxxx",
        plan: {},
        product: {title: "title"}
      )

    assert_pattern do
      response => WhopSDK::Invoice
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        current_plan: WhopSDK::Invoice::CurrentPlan,
        due_date: Time | nil,
        email_address: String | nil,
        fetch_invoice_token: String,
        number: String,
        status: WhopSDK::InvoiceStatus,
        user: WhopSDK::Invoice::User | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.invoices.retrieve("inv_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Invoice
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        current_plan: WhopSDK::Invoice::CurrentPlan,
        due_date: Time | nil,
        email_address: String | nil,
        fetch_invoice_token: String,
        number: String,
        status: WhopSDK::InvoiceStatus,
        user: WhopSDK::Invoice::User | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.invoices.list(company_id: "biz_xxxxxxxxxxxxxx")

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
        number: String,
        status: WhopSDK::InvoiceStatus,
        user: WhopSDK::InvoiceListItem::User | nil
      }
    end
  end

  def test_void
    skip("Prism tests are disabled")

    response = @whop.invoices.void("inv_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end
end
