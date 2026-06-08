# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::FinancialActivityTest < WhopSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @whop.financial_activity.list

    assert_pattern do
      response => WhopSDK::Models::FinancialActivityListResponse
    end

    assert_pattern do
      response => {
        data: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::FinancialActivityListResponse::Data]),
        page_info: WhopSDK::Models::FinancialActivityListResponse::PageInfo
      }
    end
  end
end
