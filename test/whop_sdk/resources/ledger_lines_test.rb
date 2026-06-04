# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::LedgerLinesTest < WhopSDK::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.ledger_lines.list(account_id: "account_id")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::LedgerLine
    end

    assert_pattern do
      row => {
        id: String,
        account_identifier: String | nil,
        amount: String,
        currency: WhopSDK::LedgerLine::Currency,
        line_category: String | nil,
        posted_at: Time | nil,
        source_id: String | nil
      }
    end
  end
end
