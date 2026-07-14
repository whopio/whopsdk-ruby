# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AdCampaignsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.create(objective: :awareness, platform: :meta, title: "title")

    assert_pattern do
      response => WhopSDK::AdCampaign
    end

    assert_pattern do
      response => {
        id: String,
        added_to_carts: Float,
        bid_type: WhopSDK::AdCampaign::BidType | nil,
        budget_amount: Float | nil,
        budget_optimization: WhopSDK::AdCampaign::BudgetOptimization | nil,
        budget_type: WhopSDK::AdCampaign::BudgetType | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registrations: Float,
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
        cost_per_viewed_content: Float | nil,
        created_at: String,
        custom_conversions: Float,
        delivery_status: WhopSDK::AdCampaign::DeliveryStatus,
        frequency: Float | nil,
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdCampaign::Issue]),
        leads: Float,
        objective: WhopSDK::AdCampaign::Objective | nil,
        optimization_goal: String | nil,
        platform: WhopSDK::AdCampaign::Platform,
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        result_event: WhopSDK::AdCampaign::ResultEvent | nil,
        result_event_name: String | nil,
        return_on_ad_spend: Float,
        schedules: Float,
        special_ad_categories: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdCampaign::SpecialAdCategory]),
        spend: Float,
        spend_currency: String | nil,
        status: WhopSDK::AdCampaign::Status,
        submitted_applications: Float,
        title: String,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        viewed_contents: Float
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.retrieve("id")

    assert_pattern do
      response => WhopSDK::AdCampaign
    end

    assert_pattern do
      response => {
        id: String,
        added_to_carts: Float,
        bid_type: WhopSDK::AdCampaign::BidType | nil,
        budget_amount: Float | nil,
        budget_optimization: WhopSDK::AdCampaign::BudgetOptimization | nil,
        budget_type: WhopSDK::AdCampaign::BudgetType | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registrations: Float,
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
        cost_per_viewed_content: Float | nil,
        created_at: String,
        custom_conversions: Float,
        delivery_status: WhopSDK::AdCampaign::DeliveryStatus,
        frequency: Float | nil,
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdCampaign::Issue]),
        leads: Float,
        objective: WhopSDK::AdCampaign::Objective | nil,
        optimization_goal: String | nil,
        platform: WhopSDK::AdCampaign::Platform,
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        result_event: WhopSDK::AdCampaign::ResultEvent | nil,
        result_event_name: String | nil,
        return_on_ad_spend: Float,
        schedules: Float,
        special_ad_categories: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdCampaign::SpecialAdCategory]),
        spend: Float,
        spend_currency: String | nil,
        status: WhopSDK::AdCampaign::Status,
        submitted_applications: Float,
        title: String,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        viewed_contents: Float
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.update("id")

    assert_pattern do
      response => WhopSDK::AdCampaign
    end

    assert_pattern do
      response => {
        id: String,
        added_to_carts: Float,
        bid_type: WhopSDK::AdCampaign::BidType | nil,
        budget_amount: Float | nil,
        budget_optimization: WhopSDK::AdCampaign::BudgetOptimization | nil,
        budget_type: WhopSDK::AdCampaign::BudgetType | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registrations: Float,
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
        cost_per_viewed_content: Float | nil,
        created_at: String,
        custom_conversions: Float,
        delivery_status: WhopSDK::AdCampaign::DeliveryStatus,
        frequency: Float | nil,
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdCampaign::Issue]),
        leads: Float,
        objective: WhopSDK::AdCampaign::Objective | nil,
        optimization_goal: String | nil,
        platform: WhopSDK::AdCampaign::Platform,
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        result_event: WhopSDK::AdCampaign::ResultEvent | nil,
        result_event_name: String | nil,
        return_on_ad_spend: Float,
        schedules: Float,
        special_ad_categories: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdCampaign::SpecialAdCategory]),
        spend: Float,
        spend_currency: String | nil,
        status: WhopSDK::AdCampaign::Status,
        submitted_applications: Float,
        title: String,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        viewed_contents: Float
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::AdCampaign
    end

    assert_pattern do
      row => {
        id: String,
        added_to_carts: Float,
        bid_type: WhopSDK::AdCampaign::BidType | nil,
        budget_amount: Float | nil,
        budget_optimization: WhopSDK::AdCampaign::BudgetOptimization | nil,
        budget_type: WhopSDK::AdCampaign::BudgetType | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registrations: Float,
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
        cost_per_viewed_content: Float | nil,
        created_at: String,
        custom_conversions: Float,
        delivery_status: WhopSDK::AdCampaign::DeliveryStatus,
        frequency: Float | nil,
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdCampaign::Issue]),
        leads: Float,
        objective: WhopSDK::AdCampaign::Objective | nil,
        optimization_goal: String | nil,
        platform: WhopSDK::AdCampaign::Platform,
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        result_event: WhopSDK::AdCampaign::ResultEvent | nil,
        result_event_name: String | nil,
        return_on_ad_spend: Float,
        schedules: Float,
        special_ad_categories: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdCampaign::SpecialAdCategory]),
        spend: Float,
        spend_currency: String | nil,
        status: WhopSDK::AdCampaign::Status,
        submitted_applications: Float,
        title: String,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        viewed_contents: Float
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.delete("id")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end

  def test_pause
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.pause("id")

    assert_pattern do
      response => WhopSDK::AdCampaign
    end

    assert_pattern do
      response => {
        id: String,
        added_to_carts: Float,
        bid_type: WhopSDK::AdCampaign::BidType | nil,
        budget_amount: Float | nil,
        budget_optimization: WhopSDK::AdCampaign::BudgetOptimization | nil,
        budget_type: WhopSDK::AdCampaign::BudgetType | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registrations: Float,
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
        cost_per_viewed_content: Float | nil,
        created_at: String,
        custom_conversions: Float,
        delivery_status: WhopSDK::AdCampaign::DeliveryStatus,
        frequency: Float | nil,
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdCampaign::Issue]),
        leads: Float,
        objective: WhopSDK::AdCampaign::Objective | nil,
        optimization_goal: String | nil,
        platform: WhopSDK::AdCampaign::Platform,
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        result_event: WhopSDK::AdCampaign::ResultEvent | nil,
        result_event_name: String | nil,
        return_on_ad_spend: Float,
        schedules: Float,
        special_ad_categories: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdCampaign::SpecialAdCategory]),
        spend: Float,
        spend_currency: String | nil,
        status: WhopSDK::AdCampaign::Status,
        submitted_applications: Float,
        title: String,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        viewed_contents: Float
      }
    end
  end

  def test_unpause
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.unpause("id")

    assert_pattern do
      response => WhopSDK::AdCampaign
    end

    assert_pattern do
      response => {
        id: String,
        added_to_carts: Float,
        bid_type: WhopSDK::AdCampaign::BidType | nil,
        budget_amount: Float | nil,
        budget_optimization: WhopSDK::AdCampaign::BudgetOptimization | nil,
        budget_type: WhopSDK::AdCampaign::BudgetType | nil,
        click_through_rate: Float,
        clicks: Float,
        completed_registrations: Float,
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
        cost_per_viewed_content: Float | nil,
        created_at: String,
        custom_conversions: Float,
        delivery_status: WhopSDK::AdCampaign::DeliveryStatus,
        frequency: Float | nil,
        impressions: Float,
        issues: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdCampaign::Issue]),
        leads: Float,
        objective: WhopSDK::AdCampaign::Objective | nil,
        optimization_goal: String | nil,
        platform: WhopSDK::AdCampaign::Platform,
        purchase_value: Float,
        purchases: Float,
        reach: Float,
        result_event: WhopSDK::AdCampaign::ResultEvent | nil,
        result_event_name: String | nil,
        return_on_ad_spend: Float,
        schedules: Float,
        special_ad_categories: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdCampaign::SpecialAdCategory]),
        spend: Float,
        spend_currency: String | nil,
        status: WhopSDK::AdCampaign::Status,
        submitted_applications: Float,
        title: String,
        unique_click_through_rate: Float | nil,
        unique_clicks: Float,
        updated_at: String,
        viewed_contents: Float
      }
    end
  end
end
