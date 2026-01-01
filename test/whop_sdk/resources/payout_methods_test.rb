# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::PayoutMethodsTest < WhopSDK::Test::ResourceTest
  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.payout_methods.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::PayoutMethodListResponse
    end

    assert_pattern do
      row => {
        id: String,
        currency: String,
        destination: WhopSDK::Models::PayoutMethodListResponse::Destination | nil,
        is_default: WhopSDK::Internal::Type::Boolean,
        nickname: String | nil
      }
    end
  end
end
