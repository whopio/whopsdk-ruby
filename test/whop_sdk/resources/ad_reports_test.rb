# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AdReportsTest < WhopSDK::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @whop.ad_reports.retrieve(from: "2023-12-01T05:00:00.401Z", to: "2023-12-01T05:00:00.401Z")

    assert_pattern do
      response => WhopSDK::Models::AdReportRetrieveResponse
    end

    assert_pattern do
      response => {
        daily: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::AdReportRetrieveResponse::Daily]) | nil,
        summary: WhopSDK::Models::AdReportRetrieveResponse::Summary
      }
    end
  end
end
