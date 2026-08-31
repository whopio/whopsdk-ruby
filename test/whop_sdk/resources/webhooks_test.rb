# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::WebhooksTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.webhooks.create(url: "https://example.com/hooks")

    assert_pattern do
      response => WhopSDK::Webhook
    end

    assert_pattern do
      response => {
        id: String,
        api_version: WhopSDK::Webhook::APIVersion,
        api_version_date: String | nil,
        child_resource_events: WhopSDK::Internal::Type::Boolean,
        consecutive_failures: Integer,
        created_at: String,
        disabled_at: String | nil,
        disabled_reason: WhopSDK::Webhook::DisabledReason | nil,
        enabled: WhopSDK::Internal::Type::Boolean,
        events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Webhook::Event]),
        failing_since: String | nil,
        last_failure_at: String | nil,
        resource_id: String,
        testable_events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Webhook::TestableEvent]),
        url: String,
        webhook_secret: String | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.webhooks.retrieve("id")

    assert_pattern do
      response => WhopSDK::Webhook
    end

    assert_pattern do
      response => {
        id: String,
        api_version: WhopSDK::Webhook::APIVersion,
        api_version_date: String | nil,
        child_resource_events: WhopSDK::Internal::Type::Boolean,
        consecutive_failures: Integer,
        created_at: String,
        disabled_at: String | nil,
        disabled_reason: WhopSDK::Webhook::DisabledReason | nil,
        enabled: WhopSDK::Internal::Type::Boolean,
        events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Webhook::Event]),
        failing_since: String | nil,
        last_failure_at: String | nil,
        resource_id: String,
        testable_events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Webhook::TestableEvent]),
        url: String,
        webhook_secret: String | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.webhooks.update("id")

    assert_pattern do
      response => WhopSDK::Webhook
    end

    assert_pattern do
      response => {
        id: String,
        api_version: WhopSDK::Webhook::APIVersion,
        api_version_date: String | nil,
        child_resource_events: WhopSDK::Internal::Type::Boolean,
        consecutive_failures: Integer,
        created_at: String,
        disabled_at: String | nil,
        disabled_reason: WhopSDK::Webhook::DisabledReason | nil,
        enabled: WhopSDK::Internal::Type::Boolean,
        events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Webhook::Event]),
        failing_since: String | nil,
        last_failure_at: String | nil,
        resource_id: String,
        testable_events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Webhook::TestableEvent]),
        url: String,
        webhook_secret: String | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.webhooks.list(account_id: "account_id")

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
        api_version_date: String | nil,
        child_resource_events: WhopSDK::Internal::Type::Boolean,
        consecutive_failures: Integer,
        created_at: String,
        disabled_at: String | nil,
        disabled_reason: WhopSDK::Models::WebhookListResponse::DisabledReason | nil,
        enabled: WhopSDK::Internal::Type::Boolean,
        events: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::WebhookListResponse::Event]),
        failing_since: String | nil,
        last_failure_at: String | nil,
        resource_id: String,
        url: String,
        webhook_secret: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.webhooks.delete("id")

    assert_pattern do
      response => WhopSDK::Models::WebhookDeleteResponse
    end

    assert_pattern do
      response => {
        id: String,
        deleted: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_unwrap
    key = "whsec_c2VjcmV0Cg=="

    webhook = StandardWebhooks::Webhook.new(key)

    data =
      "{\"id\":\"msg_xxxxxxxxxxxxxxxxxxxxxxxx\",\"api_version\":\"v1\",\"api_version_date\":\"2026-07-20\",\"data\":{\"id\":\"biz_xxxxxxxxxxxxxx\",\"balances\":[{\"balance\":\"50.0\",\"breakdown\":{\"available\":\"1500.0\",\"in_transit\":\"0\",\"pending\":\"0\",\"pending_settlements\":[{\"amount\":\"12.5\",\"date\":\"2026-01-01\"}],\"reserve\":\"0\"},\"icon_url\":\"https://assets.whop.com/tokens/usd.png\",\"name\":\"US Dollar\",\"price_usd\":1,\"symbol\":\"USD\",\"value_usd\":\"50.00\"}],\"banner_image_url\":\"https://whop-assets-example.s3.amazonaws.com/uploads/image/2026-01-01/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx\",\"business_address\":{\"city\":\"Austin\",\"country\":\"US\",\"line1\":\"4180 Burnet Rd\",\"line2\":\"Suite 2\",\"postal_code\":\"78756\",\"state\":\"TX\"},\"business_name\":\"Shine Time Auto Detailing, LLC\",\"business_type\":\"other\",\"can_transfer_pending_balance_to_children\":false,\"capabilities\":{\"accept_bank_payments\":\"active\",\"accept_bnpl_payments\":\"inactive\",\"accept_card_payments\":\"active\",\"bank_deposit\":\"inactive\",\"card_deposit\":\"active\",\"card_issuing\":\"inactive\",\"crypto_deposit\":\"active\",\"crypto_payout\":\"inactive\",\"instant_payout\":\"inactive\",\"run_ads\":\"active\",\"standard_payout\":\"inactive\",\"transfer\":\"inactive\"},\"cards\":{\"kind\":\"individual\",\"status\":\"approved\"},\"collect_vat_id\":true,\"company_formation\":{\"documents\":[{\"id\":\"file_xxxxxxxxxxxxxx\",\"name\":\"Articles of Organization\",\"type\":\"articles_of_organization\",\"url\":\"https://whop-assets-example.s3.amazonaws.com/uploads/audio/2026-01-01/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx\"}],\"ein_registered\":false,\"legal_name\":\"Shine Time Auto Detailing, LLC\",\"signatures\":{\"form8821\":{\"status\":\"pending\",\"expires_at\":\"2026-01-01T12:00:00.000Z\",\"url\":\"https://sign.doola.com/shine-time-auto-detailing/form8821\"},\"ss4\":{\"status\":\"pending\",\"expires_at\":\"2026-01-01T12:00:00.000Z\",\"url\":\"https://sign.doola.com/shine-time-auto-detailing/form8821\"}},\"state_registered\":true,\"status\":\"draft\"},\"country\":\"us\",\"created_at\":\"2026-01-01T12:00:00.000Z\",\"description\":\"Mobile ceramic coating, paint correction, and interior detailing across the Austin metro.\",\"email\":\"marcus@shinetime.example\",\"eula\":{\"id\":\"file_xxxxxxxxxxxxxx\",\"content_type\":\"application/pdf\",\"created_at\":\"2026-01-01T12:00:00.000Z\",\"filename\":\"evidence.pdf\",\"object\":\"file\",\"size\":9670,\"upload_status\":\"pending\",\"url\":\"https://whop-assets-example.s3.amazonaws.com/uploads/audio/2026-01-01/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx\",\"visibility\":\"private\",\"multipart_chunk_size\":5242880,\"multipart_upload_id\":\"upload-id\",\"multipart_upload_urls\":[{\"part_number\":1,\"url\":\"https://whop-assets-example.s3.amazonaws.com/uploads/2026-01-01/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/application.pdf\"}],\"upload_headers\":{},\"upload_url\":\"https://whop-assets-example.s3.amazonaws.com/uploads/2026-01-01/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/application.pdf\"},\"home_preferences\":[\"hide_member_count\"],\"industry_group\":\"automotive\",\"industry_type\":\"other\",\"invoice_prefix\":\"SHINE\",\"logo_url\":\"https://whop-assets-example.s3.amazonaws.com/uploads/image/2026-01-01/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx\",\"metadata\":{\"external_id\":\"shop_4417\",\"region\":\"austin\"},\"onboarding_type\":\"seller\",\"opengraph_image_url\":\"https://whop-assets-example.s3.amazonaws.com/uploads/image/2026-01-01/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx\",\"opengraph_image_variant\":\"black\",\"other_business_description\":\"Mobile auto detailing\",\"other_industry_description\":\"Automotive services\",\"owner\":{\"id\":\"user_xxxxxxxxxxxxxx\",\"name\":\"Dana Whitfield\",\"profile_picture\":{\"url\":\"https://ui-avatars.com/api/\"},\"username\":\"danawhitfield\"},\"parent_account\":{\"id\":\"biz_xxxxxxxxxxxxxx\",\"logo_url\":\"https://whop-assets-example.s3.amazonaws.com/uploads/image/2026-01-01/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx\",\"route\":\"shine-time-holdings\",\"title\":\"Shine Time Holdings\"},\"payment_controls\":{\"dispute_alert_auto_refund\":{\"locked\":false,\"threshold_usd\":500},\"dispute_alert_fee_usd\":29,\"enforce_3ds\":false,\"financing_disabled\":false,\"high_risk_processing_fee_percentage\":0,\"pending_auto_topup_fee_percentage\":2,\"pending_balance_delay_days\":0,\"reserve\":{\"hold_period_days\":14,\"percentage\":15},\"resolution_center_auto_refund\":{\"card_threshold_usd\":50,\"financing_threshold_usd\":25,\"locked\":false,\"paypal_threshold_usd\":40},\"restricted_payment_methods\":[\"card_visa\"],\"undated_pending_reason\":\"pending_information_request\",\"withdrawal_schedule\":{\"day\":0,\"frequency\":\"manual\",\"next_payout_date\":\"next_payout_date\"}},\"privacy_policy\":{\"id\":\"file_xxxxxxxxxxxxxx\",\"content_type\":\"application/pdf\",\"created_at\":\"2026-01-01T12:00:00.000Z\",\"filename\":\"evidence.pdf\",\"object\":\"file\",\"size\":9670,\"upload_status\":\"pending\",\"url\":\"https://whop-assets-example.s3.amazonaws.com/uploads/audio/2026-01-01/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx\",\"visibility\":\"private\",\"multipart_chunk_size\":5242880,\"multipart_upload_id\":\"upload-id\",\"multipart_upload_urls\":[{\"part_number\":1,\"url\":\"https://whop-assets-example.s3.amazonaws.com/uploads/2026-01-01/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/application.pdf\"}],\"upload_headers\":{},\"upload_url\":\"https://whop-assets-example.s3.amazonaws.com/uploads/2026-01-01/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/application.pdf\"},\"product_tax_code\":{\"id\":\"ptc_xxxxxxxxxxxxxx\",\"name\":\"General - Digital Goods\",\"product_type\":\"digital\"},\"recommended_actions\":[{\"action\":\"apply_for_financing\",\"blocked_capabilities\":[\"accept_bnpl_payments\"],\"cta\":\"https://whop.com/dashboard/biz_xxxxxxxxxxxxxx/settings/payments/\",\"cta_label\":\"Apply\",\"description\":\"Let customers pay over time with buy now, pay later.\",\"icon_url\":\"https://whop.com/illustrations/orange/piggy-bank.svg\",\"impact_score\":86,\"reasoning\":\"Financing lifts conversion on the $249 ceramic coating, the priciest job on the menu.\",\"status\":\"optional\",\"title\":\"Offer financing at checkout\"}],\"require_2fa\":true,\"required_actions\":[{\"action\":\"verify_identity\",\"blocked_capabilities\":[\"standard_payout\"],\"cta\":\"https://whop.com/dashboard/biz_xxxxxxxxxxxxxx/balance/\",\"cta_label\":\"Verify now\",\"description\":\"Complete verification to withdraw your earnings.\",\"icon_url\":\"https://whop.com/illustrations/orange/shield.svg\",\"status\":\"required\",\"title\":\"Complete your identity verification\"}],\"return_policy\":{\"id\":\"file_xxxxxxxxxxxxxx\",\"content_type\":\"application/pdf\",\"created_at\":\"2026-01-01T12:00:00.000Z\",\"filename\":\"evidence.pdf\",\"object\":\"file\",\"size\":9670,\"upload_status\":\"pending\",\"url\":\"https://whop-assets-example.s3.amazonaws.com/uploads/audio/2026-01-01/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx\",\"visibility\":\"private\",\"multipart_chunk_size\":5242880,\"multipart_upload_id\":\"upload-id\",\"multipart_upload_urls\":[{\"part_number\":1,\"url\":\"https://whop-assets-example.s3.amazonaws.com/uploads/2026-01-01/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/application.pdf\"}],\"upload_headers\":{},\"upload_url\":\"https://whop-assets-example.s3.amazonaws.com/uploads/2026-01-01/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/application.pdf\"},\"route\":\"biz_xxxxxxxxxxxxxx\",\"send_customer_emails\":false,\"show_joined_whops\":false,\"show_reviews_dtc\":false,\"show_user_directory\":false,\"social_links\":[{\"id\":\"social_1\",\"title\":\"@shinetimedetail\",\"url\":\"https://instagram.com/shinetimedetail\",\"website\":\"instagram\"}],\"stablecoin_rails\":false,\"status\":\"active\",\"status_reason\":\"Payments are paused while we review recent chargebacks on this account.\",\"store_page_config\":{\"accent_color\":\"red\",\"layout\":\"compact\",\"profile_variant\":\"business\",\"whop_affiliate_link\":true},\"target_audience\":\"Owners of new and enthusiast vehicles in Austin, TX\",\"tax_collection_enabled_states\":[\"TX\"],\"tax_identifiers\":[{\"id\":\"txid_xxxxxxxxxxxxxx\",\"tax_id_type\":\"eu_vat\",\"tax_id_value\":\"DE123456789\"}],\"tax_remitted_by\":\"self\",\"tax_type\":\"inclusive\",\"terms_of_service\":{\"id\":\"file_xxxxxxxxxxxxxx\",\"content_type\":\"application/pdf\",\"created_at\":\"2026-01-01T12:00:00.000Z\",\"filename\":\"evidence.pdf\",\"object\":\"file\",\"size\":9670,\"upload_status\":\"pending\",\"url\":\"https://whop-assets-example.s3.amazonaws.com/uploads/audio/2026-01-01/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx\",\"visibility\":\"private\",\"multipart_chunk_size\":5242880,\"multipart_upload_id\":\"upload-id\",\"multipart_upload_urls\":[{\"part_number\":1,\"url\":\"https://whop-assets-example.s3.amazonaws.com/uploads/2026-01-01/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/application.pdf\"}],\"upload_headers\":{},\"upload_url\":\"https://whop-assets-example.s3.amazonaws.com/uploads/2026-01-01/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/application.pdf\"},\"three_ds_level\":\"mandate_challenge\",\"title\":\"Shine Time Auto Detailing\",\"total_earned_usd\":0,\"total_usd\":\"50.00\",\"use_logo_as_opengraph_image_fallback\":true,\"verification\":{\"business\":null,\"individual\":null},\"volume_usd\":0,\"wallet\":{\"id\":\"cwal_xxxxxxxxxxxxxx\",\"address\":\"0xabc123\",\"network\":\"ethereum\"}},\"timestamp\":\"2025-01-01T00:00:00.000Z\",\"type\":\"account.updated\",\"account_id\":\"biz_xxxxxxxxxxxxxx\",\"previous_attributes\":{\"title\":\"Webb's Mobile Detailing\"}}"
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
