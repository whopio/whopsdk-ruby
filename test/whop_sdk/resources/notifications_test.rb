# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::NotificationsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @whop.notifications.create(
        content: "Drop off at 4180 Burnet Rd. Plan on two days for the full coating.",
        title: "Your ceramic coating is booked"
      )

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
