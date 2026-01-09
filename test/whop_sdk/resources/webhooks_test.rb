# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::WebhooksTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whop.webhooks.create(url: "https://example.com/path")

    assert_pattern do
      response => WhopSDK::Models::WebhookCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        api_version: WhopSDK::Models::WebhookCreateResponse::APIVersion,
        child_resource_events: WhopSDK::Internal::Type::Boolean,
        created_at: Time,
        enabled: WhopSDK::Internal::Type::Boolean,
        events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::WebhookCreateResponse::Event]),
        resource_id: String,
        testable_events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::WebhookCreateResponse::TestableEvent]),
        url: String,
        webhook_secret: String
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.webhooks.retrieve("hook_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::WebhookRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        api_version: WhopSDK::Models::WebhookRetrieveResponse::APIVersion,
        child_resource_events: WhopSDK::Internal::Type::Boolean,
        created_at: Time,
        enabled: WhopSDK::Internal::Type::Boolean,
        events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::WebhookRetrieveResponse::Event]),
        resource_id: String,
        testable_events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::WebhookRetrieveResponse::TestableEvent]),
        url: String
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @whop.webhooks.update("hook_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::WebhookUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        api_version: WhopSDK::Models::WebhookUpdateResponse::APIVersion,
        child_resource_events: WhopSDK::Internal::Type::Boolean,
        created_at: Time,
        enabled: WhopSDK::Internal::Type::Boolean,
        events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::WebhookUpdateResponse::Event]),
        resource_id: String,
        testable_events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::WebhookUpdateResponse::TestableEvent]),
        url: String
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.webhooks.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::WebhookListResponse
    end

    assert_pattern do
      row => {
        id: String,
        api_version: WhopSDK::Models::WebhookListResponse::APIVersion,
        child_resource_events: WhopSDK::Internal::Type::Boolean,
        created_at: Time,
        enabled: WhopSDK::Internal::Type::Boolean,
        events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::WebhookListResponse::Event]),
        url: String
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @whop.webhooks.delete("hook_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end
end
