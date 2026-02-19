# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::NotificationsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @whop.notifications.create(company_id: "biz_xxxxxxxxxxxxxx", content: "content", title: "title")

    assert_pattern do
      response => WhopSDK::Models::NotificationCreateResponse
    end

    assert_pattern do
      response => {
        success: WhopSDK::Internal::Type::Boolean
      }
    end
  end
end
