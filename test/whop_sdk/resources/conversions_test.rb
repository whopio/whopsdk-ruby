# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::ConversionsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.conversions.create(company_id: "biz_xxxxxxxxxxxxxx", event_name: :lead)

    assert_pattern do
      response => WhopSDK::Models::ConversionCreateResponse
    end

    assert_pattern do
      response => {
        id: String
      }
    end
  end
end
