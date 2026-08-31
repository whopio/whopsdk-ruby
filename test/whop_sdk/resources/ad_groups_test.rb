# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AdGroupsTest < WhopSDK::Test::ResourceTest
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
        added_to_cart_value: Float,
        added_to_carts: Float,
        audiences: WhopSDK::AdGroup::Audiences,
        bid_type: WhopSDK::AdGroup::BidType | nil,
        budget_amount: Float | nil,
        budget_type: WhopSDK::AdGroup::BudgetType | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registration_value: Float,
        completed_registrations: Float,
        contact_value: Float,
        contacts: Float,
        conversion_event: WhopSDK::AdGroup::ConversionEvent | nil,
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
        custom_conversions: Float,
        custom_event_counts: WhopSDK::Internal::Type::Unknown,
        custom_event_values: WhopSDK::Internal::Type::Unknown,
        delivery_status: WhopSDK::AdGroup::DeliveryStatus,
        demographics: WhopSDK::AdGroup::Demographics,
        desired_cost_per_result: Float | nil,
        detailed_targeting: WhopSDK::AdGroup::DetailedTargeting,
        devices: WhopSDK::AdGroup::Devices,
        ends_at: String | nil,
        frequency: Float | nil,
        frequency_cap: WhopSDK::AdGroup::FrequencyCap | nil,
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Issue]),
        languages: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        lead_value: Float,
        leads: Float,
        link_clicks: Float,
        optimization_goal: WhopSDK::AdGroup::OptimizationGoal | nil,
        placements: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Placement]),
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        regions: WhopSDK::AdGroup::Regions,
        result_event: WhopSDK::AdGroup::ResultEvent | nil,
        result_event_name: String | nil,
        results: Float | nil,
        return_on_ad_spend: Float,
        schedule_value: Float,
        schedules: Float,
        spend: Float,
        spend_currency: String | nil,
        starts_at: String | nil,
        status: WhopSDK::AdGroup::Status,
        submitted_application_value: Float,
        submitted_applications: Float,
        title: String | nil,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        viewed_content_value: Float,
        viewed_contents: Float,
        conversion_location: WhopSDK::AdGroup::ConversionLocation | nil,
        dynamic_creative: WhopSDK::Internal::Type::Boolean | nil,
        message_apps: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdGroup::MessageApp]) | nil,
        minimum_daily_spend: Float | nil
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
        added_to_cart_value: Float,
        added_to_carts: Float,
        audiences: WhopSDK::AdGroup::Audiences,
        bid_type: WhopSDK::AdGroup::BidType | nil,
        budget_amount: Float | nil,
        budget_type: WhopSDK::AdGroup::BudgetType | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registration_value: Float,
        completed_registrations: Float,
        contact_value: Float,
        contacts: Float,
        conversion_event: WhopSDK::AdGroup::ConversionEvent | nil,
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
        custom_conversions: Float,
        custom_event_counts: WhopSDK::Internal::Type::Unknown,
        custom_event_values: WhopSDK::Internal::Type::Unknown,
        delivery_status: WhopSDK::AdGroup::DeliveryStatus,
        demographics: WhopSDK::AdGroup::Demographics,
        desired_cost_per_result: Float | nil,
        detailed_targeting: WhopSDK::AdGroup::DetailedTargeting,
        devices: WhopSDK::AdGroup::Devices,
        ends_at: String | nil,
        frequency: Float | nil,
        frequency_cap: WhopSDK::AdGroup::FrequencyCap | nil,
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Issue]),
        languages: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        lead_value: Float,
        leads: Float,
        link_clicks: Float,
        optimization_goal: WhopSDK::AdGroup::OptimizationGoal | nil,
        placements: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Placement]),
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        regions: WhopSDK::AdGroup::Regions,
        result_event: WhopSDK::AdGroup::ResultEvent | nil,
        result_event_name: String | nil,
        results: Float | nil,
        return_on_ad_spend: Float,
        schedule_value: Float,
        schedules: Float,
        spend: Float,
        spend_currency: String | nil,
        starts_at: String | nil,
        status: WhopSDK::AdGroup::Status,
        submitted_application_value: Float,
        submitted_applications: Float,
        title: String | nil,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        viewed_content_value: Float,
        viewed_contents: Float,
        conversion_location: WhopSDK::AdGroup::ConversionLocation | nil,
        dynamic_creative: WhopSDK::Internal::Type::Boolean | nil,
        message_apps: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdGroup::MessageApp]) | nil,
        minimum_daily_spend: Float | nil
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
        added_to_cart_value: Float,
        added_to_carts: Float,
        audiences: WhopSDK::AdGroup::Audiences,
        bid_type: WhopSDK::AdGroup::BidType | nil,
        budget_amount: Float | nil,
        budget_type: WhopSDK::AdGroup::BudgetType | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registration_value: Float,
        completed_registrations: Float,
        contact_value: Float,
        contacts: Float,
        conversion_event: WhopSDK::AdGroup::ConversionEvent | nil,
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
        custom_conversions: Float,
        custom_event_counts: WhopSDK::Internal::Type::Unknown,
        custom_event_values: WhopSDK::Internal::Type::Unknown,
        delivery_status: WhopSDK::AdGroup::DeliveryStatus,
        demographics: WhopSDK::AdGroup::Demographics,
        desired_cost_per_result: Float | nil,
        detailed_targeting: WhopSDK::AdGroup::DetailedTargeting,
        devices: WhopSDK::AdGroup::Devices,
        ends_at: String | nil,
        frequency: Float | nil,
        frequency_cap: WhopSDK::AdGroup::FrequencyCap | nil,
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Issue]),
        languages: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        lead_value: Float,
        leads: Float,
        link_clicks: Float,
        optimization_goal: WhopSDK::AdGroup::OptimizationGoal | nil,
        placements: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Placement]),
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        regions: WhopSDK::AdGroup::Regions,
        result_event: WhopSDK::AdGroup::ResultEvent | nil,
        result_event_name: String | nil,
        results: Float | nil,
        return_on_ad_spend: Float,
        schedule_value: Float,
        schedules: Float,
        spend: Float,
        spend_currency: String | nil,
        starts_at: String | nil,
        status: WhopSDK::AdGroup::Status,
        submitted_application_value: Float,
        submitted_applications: Float,
        title: String | nil,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        viewed_content_value: Float,
        viewed_contents: Float,
        conversion_location: WhopSDK::AdGroup::ConversionLocation | nil,
        dynamic_creative: WhopSDK::Internal::Type::Boolean | nil,
        message_apps: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdGroup::MessageApp]) | nil,
        minimum_daily_spend: Float | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.ad_groups.delete("id")

    assert_pattern do
      response => WhopSDK::Models::AdGroupDeleteResponse
    end

    assert_pattern do
      response => {
        id: String,
        deleted: WhopSDK::Internal::Type::Boolean
      }
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
        added_to_cart_value: Float,
        added_to_carts: Float,
        audiences: WhopSDK::AdGroup::Audiences,
        bid_type: WhopSDK::AdGroup::BidType | nil,
        budget_amount: Float | nil,
        budget_type: WhopSDK::AdGroup::BudgetType | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registration_value: Float,
        completed_registrations: Float,
        contact_value: Float,
        contacts: Float,
        conversion_event: WhopSDK::AdGroup::ConversionEvent | nil,
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
        custom_conversions: Float,
        custom_event_counts: WhopSDK::Internal::Type::Unknown,
        custom_event_values: WhopSDK::Internal::Type::Unknown,
        delivery_status: WhopSDK::AdGroup::DeliveryStatus,
        demographics: WhopSDK::AdGroup::Demographics,
        desired_cost_per_result: Float | nil,
        detailed_targeting: WhopSDK::AdGroup::DetailedTargeting,
        devices: WhopSDK::AdGroup::Devices,
        ends_at: String | nil,
        frequency: Float | nil,
        frequency_cap: WhopSDK::AdGroup::FrequencyCap | nil,
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Issue]),
        languages: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        lead_value: Float,
        leads: Float,
        link_clicks: Float,
        optimization_goal: WhopSDK::AdGroup::OptimizationGoal | nil,
        placements: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Placement]),
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        regions: WhopSDK::AdGroup::Regions,
        result_event: WhopSDK::AdGroup::ResultEvent | nil,
        result_event_name: String | nil,
        results: Float | nil,
        return_on_ad_spend: Float,
        schedule_value: Float,
        schedules: Float,
        spend: Float,
        spend_currency: String | nil,
        starts_at: String | nil,
        status: WhopSDK::AdGroup::Status,
        submitted_application_value: Float,
        submitted_applications: Float,
        title: String | nil,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        viewed_content_value: Float,
        viewed_contents: Float,
        conversion_location: WhopSDK::AdGroup::ConversionLocation | nil,
        dynamic_creative: WhopSDK::Internal::Type::Boolean | nil,
        message_apps: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdGroup::MessageApp]) | nil,
        minimum_daily_spend: Float | nil
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
        added_to_cart_value: Float,
        added_to_carts: Float,
        audiences: WhopSDK::AdGroup::Audiences,
        bid_type: WhopSDK::AdGroup::BidType | nil,
        budget_amount: Float | nil,
        budget_type: WhopSDK::AdGroup::BudgetType | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registration_value: Float,
        completed_registrations: Float,
        contact_value: Float,
        contacts: Float,
        conversion_event: WhopSDK::AdGroup::ConversionEvent | nil,
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
        custom_conversions: Float,
        custom_event_counts: WhopSDK::Internal::Type::Unknown,
        custom_event_values: WhopSDK::Internal::Type::Unknown,
        delivery_status: WhopSDK::AdGroup::DeliveryStatus,
        demographics: WhopSDK::AdGroup::Demographics,
        desired_cost_per_result: Float | nil,
        detailed_targeting: WhopSDK::AdGroup::DetailedTargeting,
        devices: WhopSDK::AdGroup::Devices,
        ends_at: String | nil,
        frequency: Float | nil,
        frequency_cap: WhopSDK::AdGroup::FrequencyCap | nil,
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Issue]),
        languages: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        lead_value: Float,
        leads: Float,
        link_clicks: Float,
        optimization_goal: WhopSDK::AdGroup::OptimizationGoal | nil,
        placements: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroup::Placement]),
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        regions: WhopSDK::AdGroup::Regions,
        result_event: WhopSDK::AdGroup::ResultEvent | nil,
        result_event_name: String | nil,
        results: Float | nil,
        return_on_ad_spend: Float,
        schedule_value: Float,
        schedules: Float,
        spend: Float,
        spend_currency: String | nil,
        starts_at: String | nil,
        status: WhopSDK::AdGroup::Status,
        submitted_application_value: Float,
        submitted_applications: Float,
        title: String | nil,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        viewed_content_value: Float,
        viewed_contents: Float,
        conversion_location: WhopSDK::AdGroup::ConversionLocation | nil,
        dynamic_creative: WhopSDK::Internal::Type::Boolean | nil,
        message_apps: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdGroup::MessageApp]) | nil,
        minimum_daily_spend: Float | nil
      }
    end
  end
end
