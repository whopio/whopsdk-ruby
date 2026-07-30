# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AdGroupsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.ad_groups.create(ad_campaign_id: "ad_campaign_id")

    assert_pattern do
      response => WhopSDK::AdGroup
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::AdGroup::AdCampaign,
        added_to_carts: Float,
        audiences: WhopSDK::Internal::Type::Unknown,
        bid_type: WhopSDK::AdGroup::BidType | nil,
        budget_amount: Float | nil,
        budget_type: WhopSDK::AdGroup::BudgetType | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registrations: Float,
        contacts: Float,
        conversion_event: WhopSDK::AdGroup::ConversionEvent | nil,
        conversion_location: WhopSDK::AdGroup::ConversionLocation | nil,
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
        cost_per_viewed_content: Float | nil,
        created_at: String,
        custom_conversions: Float,
        custom_event_counts: WhopSDK::Internal::Type::Unknown,
        delivery_status: WhopSDK::AdGroup::DeliveryStatus,
        demographics: WhopSDK::Internal::Type::Unknown,
        desired_cost_per_result: Float | nil,
        detailed_targeting: WhopSDK::Internal::Type::Unknown,
        devices: WhopSDK::Internal::Type::Unknown,
        dynamic_creative: WhopSDK::Internal::Type::Boolean,
        ends_at: String | nil,
        frequency: Float | nil,
        frequency_cap: WhopSDK::Internal::Type::Unknown | nil,
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Issue]),
        languages: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        leads: Float,
        message_apps: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        minimum_daily_spend: Float | nil,
        optimization_goal: String | nil,
        placements: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]),
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        regions: WhopSDK::Internal::Type::Unknown,
        result_event: WhopSDK::AdGroup::ResultEvent | nil,
        result_event_name: String | nil,
        results: Float | nil,
        return_on_ad_spend: Float,
        schedules: Float,
        spend: Float,
        spend_currency: String | nil,
        starts_at: String | nil,
        status: WhopSDK::AdGroup::Status,
        submitted_applications: Float,
        title: String | nil,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        viewed_contents: Float
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.ad_groups.retrieve("id")

    assert_pattern do
      response => WhopSDK::AdGroup
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::AdGroup::AdCampaign,
        added_to_carts: Float,
        audiences: WhopSDK::Internal::Type::Unknown,
        bid_type: WhopSDK::AdGroup::BidType | nil,
        budget_amount: Float | nil,
        budget_type: WhopSDK::AdGroup::BudgetType | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registrations: Float,
        contacts: Float,
        conversion_event: WhopSDK::AdGroup::ConversionEvent | nil,
        conversion_location: WhopSDK::AdGroup::ConversionLocation | nil,
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
        cost_per_viewed_content: Float | nil,
        created_at: String,
        custom_conversions: Float,
        custom_event_counts: WhopSDK::Internal::Type::Unknown,
        delivery_status: WhopSDK::AdGroup::DeliveryStatus,
        demographics: WhopSDK::Internal::Type::Unknown,
        desired_cost_per_result: Float | nil,
        detailed_targeting: WhopSDK::Internal::Type::Unknown,
        devices: WhopSDK::Internal::Type::Unknown,
        dynamic_creative: WhopSDK::Internal::Type::Boolean,
        ends_at: String | nil,
        frequency: Float | nil,
        frequency_cap: WhopSDK::Internal::Type::Unknown | nil,
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Issue]),
        languages: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        leads: Float,
        message_apps: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        minimum_daily_spend: Float | nil,
        optimization_goal: String | nil,
        placements: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]),
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        regions: WhopSDK::Internal::Type::Unknown,
        result_event: WhopSDK::AdGroup::ResultEvent | nil,
        result_event_name: String | nil,
        results: Float | nil,
        return_on_ad_spend: Float,
        schedules: Float,
        spend: Float,
        spend_currency: String | nil,
        starts_at: String | nil,
        status: WhopSDK::AdGroup::Status,
        submitted_applications: Float,
        title: String | nil,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        viewed_contents: Float
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.ad_groups.update("id")

    assert_pattern do
      response => WhopSDK::AdGroup
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::AdGroup::AdCampaign,
        added_to_carts: Float,
        audiences: WhopSDK::Internal::Type::Unknown,
        bid_type: WhopSDK::AdGroup::BidType | nil,
        budget_amount: Float | nil,
        budget_type: WhopSDK::AdGroup::BudgetType | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registrations: Float,
        contacts: Float,
        conversion_event: WhopSDK::AdGroup::ConversionEvent | nil,
        conversion_location: WhopSDK::AdGroup::ConversionLocation | nil,
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
        cost_per_viewed_content: Float | nil,
        created_at: String,
        custom_conversions: Float,
        custom_event_counts: WhopSDK::Internal::Type::Unknown,
        delivery_status: WhopSDK::AdGroup::DeliveryStatus,
        demographics: WhopSDK::Internal::Type::Unknown,
        desired_cost_per_result: Float | nil,
        detailed_targeting: WhopSDK::Internal::Type::Unknown,
        devices: WhopSDK::Internal::Type::Unknown,
        dynamic_creative: WhopSDK::Internal::Type::Boolean,
        ends_at: String | nil,
        frequency: Float | nil,
        frequency_cap: WhopSDK::Internal::Type::Unknown | nil,
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Issue]),
        languages: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        leads: Float,
        message_apps: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        minimum_daily_spend: Float | nil,
        optimization_goal: String | nil,
        placements: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]),
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        regions: WhopSDK::Internal::Type::Unknown,
        result_event: WhopSDK::AdGroup::ResultEvent | nil,
        result_event_name: String | nil,
        results: Float | nil,
        return_on_ad_spend: Float,
        schedules: Float,
        spend: Float,
        spend_currency: String | nil,
        starts_at: String | nil,
        status: WhopSDK::AdGroup::Status,
        submitted_applications: Float,
        title: String | nil,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        viewed_contents: Float
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.ad_groups.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::AdGroup
    end

    assert_pattern do
      row => {
        id: String,
        ad_campaign: WhopSDK::AdGroup::AdCampaign,
        added_to_carts: Float,
        audiences: WhopSDK::Internal::Type::Unknown,
        bid_type: WhopSDK::AdGroup::BidType | nil,
        budget_amount: Float | nil,
        budget_type: WhopSDK::AdGroup::BudgetType | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registrations: Float,
        contacts: Float,
        conversion_event: WhopSDK::AdGroup::ConversionEvent | nil,
        conversion_location: WhopSDK::AdGroup::ConversionLocation | nil,
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
        cost_per_viewed_content: Float | nil,
        created_at: String,
        custom_conversions: Float,
        custom_event_counts: WhopSDK::Internal::Type::Unknown,
        delivery_status: WhopSDK::AdGroup::DeliveryStatus,
        demographics: WhopSDK::Internal::Type::Unknown,
        desired_cost_per_result: Float | nil,
        detailed_targeting: WhopSDK::Internal::Type::Unknown,
        devices: WhopSDK::Internal::Type::Unknown,
        dynamic_creative: WhopSDK::Internal::Type::Boolean,
        ends_at: String | nil,
        frequency: Float | nil,
        frequency_cap: WhopSDK::Internal::Type::Unknown | nil,
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Issue]),
        languages: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        leads: Float,
        message_apps: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        minimum_daily_spend: Float | nil,
        optimization_goal: String | nil,
        placements: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]),
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        regions: WhopSDK::Internal::Type::Unknown,
        result_event: WhopSDK::AdGroup::ResultEvent | nil,
        result_event_name: String | nil,
        results: Float | nil,
        return_on_ad_spend: Float,
        schedules: Float,
        spend: Float,
        spend_currency: String | nil,
        starts_at: String | nil,
        status: WhopSDK::AdGroup::Status,
        submitted_applications: Float,
        title: String | nil,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        viewed_contents: Float
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.ad_groups.delete("id")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end

  def test_pause
    skip("Mock server tests are disabled")

    response = @whop.ad_groups.pause("id")

    assert_pattern do
      response => WhopSDK::AdGroup
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::AdGroup::AdCampaign,
        added_to_carts: Float,
        audiences: WhopSDK::Internal::Type::Unknown,
        bid_type: WhopSDK::AdGroup::BidType | nil,
        budget_amount: Float | nil,
        budget_type: WhopSDK::AdGroup::BudgetType | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registrations: Float,
        contacts: Float,
        conversion_event: WhopSDK::AdGroup::ConversionEvent | nil,
        conversion_location: WhopSDK::AdGroup::ConversionLocation | nil,
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
        cost_per_viewed_content: Float | nil,
        created_at: String,
        custom_conversions: Float,
        custom_event_counts: WhopSDK::Internal::Type::Unknown,
        delivery_status: WhopSDK::AdGroup::DeliveryStatus,
        demographics: WhopSDK::Internal::Type::Unknown,
        desired_cost_per_result: Float | nil,
        detailed_targeting: WhopSDK::Internal::Type::Unknown,
        devices: WhopSDK::Internal::Type::Unknown,
        dynamic_creative: WhopSDK::Internal::Type::Boolean,
        ends_at: String | nil,
        frequency: Float | nil,
        frequency_cap: WhopSDK::Internal::Type::Unknown | nil,
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Issue]),
        languages: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        leads: Float,
        message_apps: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        minimum_daily_spend: Float | nil,
        optimization_goal: String | nil,
        placements: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]),
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        regions: WhopSDK::Internal::Type::Unknown,
        result_event: WhopSDK::AdGroup::ResultEvent | nil,
        result_event_name: String | nil,
        results: Float | nil,
        return_on_ad_spend: Float,
        schedules: Float,
        spend: Float,
        spend_currency: String | nil,
        starts_at: String | nil,
        status: WhopSDK::AdGroup::Status,
        submitted_applications: Float,
        title: String | nil,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        viewed_contents: Float
      }
    end
  end

  def test_unpause
    skip("Mock server tests are disabled")

    response = @whop.ad_groups.unpause("id")

    assert_pattern do
      response => WhopSDK::AdGroup
    end

    assert_pattern do
      response => {
        id: String,
        ad_campaign: WhopSDK::AdGroup::AdCampaign,
        added_to_carts: Float,
        audiences: WhopSDK::Internal::Type::Unknown,
        bid_type: WhopSDK::AdGroup::BidType | nil,
        budget_amount: Float | nil,
        budget_type: WhopSDK::AdGroup::BudgetType | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registrations: Float,
        contacts: Float,
        conversion_event: WhopSDK::AdGroup::ConversionEvent | nil,
        conversion_location: WhopSDK::AdGroup::ConversionLocation | nil,
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
        cost_per_viewed_content: Float | nil,
        created_at: String,
        custom_conversions: Float,
        custom_event_counts: WhopSDK::Internal::Type::Unknown,
        delivery_status: WhopSDK::AdGroup::DeliveryStatus,
        demographics: WhopSDK::Internal::Type::Unknown,
        desired_cost_per_result: Float | nil,
        detailed_targeting: WhopSDK::Internal::Type::Unknown,
        devices: WhopSDK::Internal::Type::Unknown,
        dynamic_creative: WhopSDK::Internal::Type::Boolean,
        ends_at: String | nil,
        frequency: Float | nil,
        frequency_cap: WhopSDK::Internal::Type::Unknown | nil,
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Issue]),
        languages: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        leads: Float,
        message_apps: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        minimum_daily_spend: Float | nil,
        optimization_goal: String | nil,
        placements: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::Unknown]),
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        regions: WhopSDK::Internal::Type::Unknown,
        result_event: WhopSDK::AdGroup::ResultEvent | nil,
        result_event_name: String | nil,
        results: Float | nil,
        return_on_ad_spend: Float,
        schedules: Float,
        spend: Float,
        spend_currency: String | nil,
        starts_at: String | nil,
        status: WhopSDK::AdGroup::Status,
        submitted_applications: Float,
        title: String | nil,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        viewed_contents: Float
      }
    end
  end
end
