# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::WebhooksTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.webhooks.create(url: "https://example.com/path")

    assert_pattern do
      response => WhopSDK::Models::WebhookCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        api_version: WhopSDK::APIVersion,
        child_resource_events: WhopSDK::Internal::Type::Boolean,
        created_at: Time,
        enabled: WhopSDK::Internal::Type::Boolean,
        events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::WebhookEvent]),
        resource_id: String,
        testable_events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::WebhookEvent]),
        url: String,
        webhook_secret: String
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.webhooks.retrieve("hook_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Webhook
    end

    assert_pattern do
      response => {
        id: String,
        api_version: WhopSDK::APIVersion,
        child_resource_events: WhopSDK::Internal::Type::Boolean,
        created_at: Time,
        enabled: WhopSDK::Internal::Type::Boolean,
        events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::WebhookEvent]),
        resource_id: String,
        testable_events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::WebhookEvent]),
        url: String
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.webhooks.update("hook_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Webhook
    end

    assert_pattern do
      response => {
        id: String,
        api_version: WhopSDK::APIVersion,
        child_resource_events: WhopSDK::Internal::Type::Boolean,
        created_at: Time,
        enabled: WhopSDK::Internal::Type::Boolean,
        events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::WebhookEvent]),
        resource_id: String,
        testable_events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::WebhookEvent]),
        url: String
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

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
        api_version: WhopSDK::APIVersion,
        child_resource_events: WhopSDK::Internal::Type::Boolean,
        created_at: Time,
        enabled: WhopSDK::Internal::Type::Boolean,
        events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::WebhookEvent]),
        url: String
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.webhooks.delete("hook_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end

  def test_unwrap
    key = "whsec_c2VjcmV0Cg=="

    webhook = StandardWebhooks::Webhook.new(key)

    data =
      "{\"id\":\"msg_xxxxxxxxxxxxxxxxxxxxxxxx\",\"api_version\":\"v1\",\"data\":{\"id\":\"inv_xxxxxxxxxxxxxx\",\"created_at\":\"2023-12-01T05:00:00.401Z\",\"current_plan\":{\"id\":\"plan_xxxxxxxxxxxxx\",\"currency\":\"usd\",\"formatted_price\":\"$10.00\"},\"due_date\":\"2023-12-01T05:00:00.401Z\",\"email_address\":\"customer@example.com\",\"fetch_invoice_token\":\"eyJhbGciOiJIUzI1NiJ9...\",\"number\":\"#0001\",\"status\":\"draft\",\"user\":{\"id\":\"user_xxxxxxxxxxxxx\",\"name\":\"John Doe\",\"username\":\"johndoe42\"}},\"timestamp\":\"2025-01-01T00:00:00.000Z\",\"type\":\"invoice.created\",\"company_id\":\"biz_xxxxxxxxxxxxxx\"}"
    message_id = "1"
    timestamp = Time.now.to_i.to_s
    signature = webhook.sign(message_id, timestamp, data)
    headers =
      {"webhook-id" => message_id, "webhook-timestamp" => timestamp, "webhook-signature" => signature}

    @whop.webhooks.unwrap(data, headers: headers, key: key)

    bad_headers = [
      headers.merge("webhook-id" => "bad"),
      headers.merge("webhook-timestamp" => "0"),
      headers.merge("webhook-signature" => webhook.sign(message_id, timestamp, "xxx"))
    ]
    bad_headers.each do |bad_header|
      assert_raises(StandardWebhooks::WebhookVerificationError) do
        @whop.webhooks.unwrap(data, headers: bad_header, key: key)
      end
    end
  end
end
