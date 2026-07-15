# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::EventsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.events.create(account_id: "account_id", event_name: "course_completed")

    assert_pattern do
      response => WhopSDK::Models::EventCreateResponse
    end

    assert_pattern do
      response => {
        id: String
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.events.list(person_id: "person_id")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::EventListResponse
    end

    assert_pattern do
      row => {
        id: String,
        event_id: String,
        event_name: String,
        event_time: Integer,
        context: WhopSDK::Models::EventListResponse::Context | nil,
        currency: String | nil,
        custom_name: String | nil,
        path: String | nil,
        questions: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::EventListResponse::Question]) | nil,
        referrer_url: String | nil,
        total_usd_amount: Float | nil,
        url: String | nil,
        user: WhopSDK::Models::EventListResponse::User | nil,
        value: Float | nil
      }
    end
  end
end
