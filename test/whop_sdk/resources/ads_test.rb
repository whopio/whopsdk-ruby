# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AdsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.ads.retrieve("id")

    assert_pattern do
      response => WhopSDK::Ad
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::Ad::AdCampaign,
        ad_group: WhopSDK::Ad::AdGroup,
        added_to_cart_value: Float,
        added_to_carts: Float,
        call_to_action: WhopSDK::Ad::CallToAction | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registration_value: Float,
        completed_registrations: Float,
        contact_value: Float,
        contacts: Float,
        cost_per_added_to_cart: Float | nil,
        cost_per_click: Float,
        cost_per_completed_registration: Float | nil,
        cost_per_contact: Float | nil,
        cost_per_lead: Float | nil,
        cost_per_mille: Float,
        cost_per_purchase: Float | nil,
        cost_per_result: Float | nil,
        cost_per_schedule: Float | nil,
        cost_per_submitted_application: Float | nil,
        cost_per_unique_click: Float | nil,
        cost_per_viewed_content: Float | nil,
        created_at: String,
        creatives: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::Creative]),
        custom_conversions: Float,
        custom_event_counts: WhopSDK::Internal::Type::Unknown,
        custom_event_values: WhopSDK::Internal::Type::Unknown,
        delivery_status: WhopSDK::Ad::DeliveryStatus,
        descriptions: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        existing_post_id: String | nil,
        frequency: Float | nil,
        headlines: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::Issue]),
        lead_value: Float,
        leads: Float,
        link_clicks: Float,
        post_id: String | nil,
        post_source: WhopSDK::Ad::PostSource | nil,
        post_thumbnail_url: String | nil,
        primary_texts: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        result_event: WhopSDK::Ad::ResultEvent | nil,
        result_event_name: String | nil,
        results: Float | nil,
        return_on_ad_spend: Float,
        schedule_value: Float,
        schedules: Float,
        social_accounts: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::SocialAccount]),
        spend: Float,
        spend_currency: String | nil,
        status: WhopSDK::Ad::Status,
        submitted_application_value: Float,
        submitted_applications: Float,
        title: String | nil,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        url: String | nil,
        url_parameters: WhopSDK::Internal::Type::Unknown,
        viewed_content_value: Float,
        viewed_contents: Float,
        lead_form: WhopSDK::Ad::LeadForm | nil,
        lead_form_id: String | nil,
        messaging_config: WhopSDK::Ad::MessagingConfig | nil,
        multi_advertiser_ads: WhopSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.ads.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Ad
    end

    assert_pattern do
      row => {
        id: String,
        ad_campaign: WhopSDK::Ad::AdCampaign,
        ad_group: WhopSDK::Ad::AdGroup,
        added_to_cart_value: Float,
        added_to_carts: Float,
        call_to_action: WhopSDK::Ad::CallToAction | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registration_value: Float,
        completed_registrations: Float,
        contact_value: Float,
        contacts: Float,
        cost_per_added_to_cart: Float | nil,
        cost_per_click: Float,
        cost_per_completed_registration: Float | nil,
        cost_per_contact: Float | nil,
        cost_per_lead: Float | nil,
        cost_per_mille: Float,
        cost_per_purchase: Float | nil,
        cost_per_result: Float | nil,
        cost_per_schedule: Float | nil,
        cost_per_submitted_application: Float | nil,
        cost_per_unique_click: Float | nil,
        cost_per_viewed_content: Float | nil,
        created_at: String,
        creatives: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::Creative]),
        custom_conversions: Float,
        custom_event_counts: WhopSDK::Internal::Type::Unknown,
        custom_event_values: WhopSDK::Internal::Type::Unknown,
        delivery_status: WhopSDK::Ad::DeliveryStatus,
        descriptions: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        existing_post_id: String | nil,
        frequency: Float | nil,
        headlines: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::Issue]),
        lead_value: Float,
        leads: Float,
        link_clicks: Float,
        post_id: String | nil,
        post_source: WhopSDK::Ad::PostSource | nil,
        post_thumbnail_url: String | nil,
        primary_texts: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        result_event: WhopSDK::Ad::ResultEvent | nil,
        result_event_name: String | nil,
        results: Float | nil,
        return_on_ad_spend: Float,
        schedule_value: Float,
        schedules: Float,
        social_accounts: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::SocialAccount]),
        spend: Float,
        spend_currency: String | nil,
        status: WhopSDK::Ad::Status,
        submitted_application_value: Float,
        submitted_applications: Float,
        title: String | nil,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        url: String | nil,
        url_parameters: WhopSDK::Internal::Type::Unknown,
        viewed_content_value: Float,
        viewed_contents: Float,
        lead_form: WhopSDK::Ad::LeadForm | nil,
        lead_form_id: String | nil,
        messaging_config: WhopSDK::Ad::MessagingConfig | nil,
        multi_advertiser_ads: WhopSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_pause
    skip("Mock server tests are disabled")

    response = @whop.ads.pause("id")

    assert_pattern do
      response => WhopSDK::Ad
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::Ad::AdCampaign,
        ad_group: WhopSDK::Ad::AdGroup,
        added_to_cart_value: Float,
        added_to_carts: Float,
        call_to_action: WhopSDK::Ad::CallToAction | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registration_value: Float,
        completed_registrations: Float,
        contact_value: Float,
        contacts: Float,
        cost_per_added_to_cart: Float | nil,
        cost_per_click: Float,
        cost_per_completed_registration: Float | nil,
        cost_per_contact: Float | nil,
        cost_per_lead: Float | nil,
        cost_per_mille: Float,
        cost_per_purchase: Float | nil,
        cost_per_result: Float | nil,
        cost_per_schedule: Float | nil,
        cost_per_submitted_application: Float | nil,
        cost_per_unique_click: Float | nil,
        cost_per_viewed_content: Float | nil,
        created_at: String,
        creatives: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::Creative]),
        custom_conversions: Float,
        custom_event_counts: WhopSDK::Internal::Type::Unknown,
        custom_event_values: WhopSDK::Internal::Type::Unknown,
        delivery_status: WhopSDK::Ad::DeliveryStatus,
        descriptions: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        existing_post_id: String | nil,
        frequency: Float | nil,
        headlines: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::Issue]),
        lead_value: Float,
        leads: Float,
        link_clicks: Float,
        post_id: String | nil,
        post_source: WhopSDK::Ad::PostSource | nil,
        post_thumbnail_url: String | nil,
        primary_texts: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        result_event: WhopSDK::Ad::ResultEvent | nil,
        result_event_name: String | nil,
        results: Float | nil,
        return_on_ad_spend: Float,
        schedule_value: Float,
        schedules: Float,
        social_accounts: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::SocialAccount]),
        spend: Float,
        spend_currency: String | nil,
        status: WhopSDK::Ad::Status,
        submitted_application_value: Float,
        submitted_applications: Float,
        title: String | nil,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        url: String | nil,
        url_parameters: WhopSDK::Internal::Type::Unknown,
        viewed_content_value: Float,
        viewed_contents: Float,
        lead_form: WhopSDK::Ad::LeadForm | nil,
        lead_form_id: String | nil,
        messaging_config: WhopSDK::Ad::MessagingConfig | nil,
        multi_advertiser_ads: WhopSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_unpause
    skip("Mock server tests are disabled")

    response = @whop.ads.unpause("id")

    assert_pattern do
      response => WhopSDK::Ad
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::Ad::AdCampaign,
        ad_group: WhopSDK::Ad::AdGroup,
        added_to_cart_value: Float,
        added_to_carts: Float,
        call_to_action: WhopSDK::Ad::CallToAction | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registration_value: Float,
        completed_registrations: Float,
        contact_value: Float,
        contacts: Float,
        cost_per_added_to_cart: Float | nil,
        cost_per_click: Float,
        cost_per_completed_registration: Float | nil,
        cost_per_contact: Float | nil,
        cost_per_lead: Float | nil,
        cost_per_mille: Float,
        cost_per_purchase: Float | nil,
        cost_per_result: Float | nil,
        cost_per_schedule: Float | nil,
        cost_per_submitted_application: Float | nil,
        cost_per_unique_click: Float | nil,
        cost_per_viewed_content: Float | nil,
        created_at: String,
        creatives: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::Creative]),
        custom_conversions: Float,
        custom_event_counts: WhopSDK::Internal::Type::Unknown,
        custom_event_values: WhopSDK::Internal::Type::Unknown,
        delivery_status: WhopSDK::Ad::DeliveryStatus,
        descriptions: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        existing_post_id: String | nil,
        frequency: Float | nil,
        headlines: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::Issue]),
        lead_value: Float,
        leads: Float,
        link_clicks: Float,
        post_id: String | nil,
        post_source: WhopSDK::Ad::PostSource | nil,
        post_thumbnail_url: String | nil,
        primary_texts: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        result_event: WhopSDK::Ad::ResultEvent | nil,
        result_event_name: String | nil,
        results: Float | nil,
        return_on_ad_spend: Float,
        schedule_value: Float,
        schedules: Float,
        social_accounts: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Ad::SocialAccount]),
        spend: Float,
        spend_currency: String | nil,
        status: WhopSDK::Ad::Status,
        submitted_application_value: Float,
        submitted_applications: Float,
        title: String | nil,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        url: String | nil,
        url_parameters: WhopSDK::Internal::Type::Unknown,
        viewed_content_value: Float,
        viewed_contents: Float,
        lead_form: WhopSDK::Ad::LeadForm | nil,
        lead_form_id: String | nil,
        messaging_config: WhopSDK::Ad::MessagingConfig | nil,
        multi_advertiser_ads: WhopSDK::Internal::Type::Boolean | nil
      }
    end
  end
end
