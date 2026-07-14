# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::StatsTest < WhopSDK::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @whop.stats.retrieve("metric", from: "2019-12-27", to: "2019-12-27")

    assert_pattern do
      response => WhopSDK::Models::StatRetrieveResponse
    end

    assert_pattern do
      response => {
        data: WhopSDK::Models::StatRetrieveResponse::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.stats.list

    assert_pattern do
      response => WhopSDK::Models::StatListResponse
    end

    assert_pattern do
      response => {
        data: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::StatListResponse::Data])
      }
    end
  end
end
