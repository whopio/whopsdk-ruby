# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AdCampaignsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @whop.ad_campaigns.create(company_id: "biz_xxxxxxxxxxxxxx", config: {}, platform: :meta, title: "title")

    assert_pattern do
      response => WhopSDK::Models::AdCampaignCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        available_budget: Float,
        billing_ledger_account: WhopSDK::Models::AdCampaignCreateResponse::BillingLedgerAccount | nil,
        clicks_count: Integer,
        config: WhopSDK::Models::AdCampaignCreateResponse::Config | nil,
        created_at: Time,
        created_by_user: WhopSDK::Models::AdCampaignCreateResponse::CreatedByUser,
        daily_budget: Float | nil,
        impressions_count: Integer,
        paused_until: Time | nil,
        payment_method: WhopSDK::Models::AdCampaignCreateResponse::PaymentMethod,
        platform: WhopSDK::Models::AdCampaignCreateResponse::Platform | nil,
        product: WhopSDK::Models::AdCampaignCreateResponse::Product | nil,
        purchases_count: Integer,
        remaining_balance: Float,
        return_on_ad_spend: Float,
        revenue: Float,
        status: WhopSDK::Models::AdCampaignCreateResponse::Status,
        target_country_codes: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        title: String,
        todays_spend: Float,
        total_credits: Float,
        total_spend: Float,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.retrieve("adcamp_xxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::AdCampaignRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        available_budget: Float,
        billing_ledger_account: WhopSDK::Models::AdCampaignRetrieveResponse::BillingLedgerAccount | nil,
        clicks_count: Integer,
        config: WhopSDK::Models::AdCampaignRetrieveResponse::Config | nil,
        created_at: Time,
        created_by_user: WhopSDK::Models::AdCampaignRetrieveResponse::CreatedByUser,
        daily_budget: Float | nil,
        impressions_count: Integer,
        paused_until: Time | nil,
        payment_method: WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod,
        platform: WhopSDK::Models::AdCampaignRetrieveResponse::Platform | nil,
        product: WhopSDK::Models::AdCampaignRetrieveResponse::Product | nil,
        purchases_count: Integer,
        remaining_balance: Float,
        return_on_ad_spend: Float,
        revenue: Float,
        status: WhopSDK::Models::AdCampaignRetrieveResponse::Status,
        target_country_codes: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        title: String,
        todays_spend: Float,
        total_credits: Float,
        total_spend: Float,
        updated_at: Time
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.update("adcamp_xxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::AdCampaignUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        available_budget: Float,
        billing_ledger_account: WhopSDK::Models::AdCampaignUpdateResponse::BillingLedgerAccount | nil,
        clicks_count: Integer,
        config: WhopSDK::Models::AdCampaignUpdateResponse::Config | nil,
        created_at: Time,
        created_by_user: WhopSDK::Models::AdCampaignUpdateResponse::CreatedByUser,
        daily_budget: Float | nil,
        impressions_count: Integer,
        paused_until: Time | nil,
        payment_method: WhopSDK::Models::AdCampaignUpdateResponse::PaymentMethod,
        platform: WhopSDK::Models::AdCampaignUpdateResponse::Platform | nil,
        product: WhopSDK::Models::AdCampaignUpdateResponse::Product | nil,
        purchases_count: Integer,
        remaining_balance: Float,
        return_on_ad_spend: Float,
        revenue: Float,
        status: WhopSDK::Models::AdCampaignUpdateResponse::Status,
        target_country_codes: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        title: String,
        todays_spend: Float,
        total_credits: Float,
        total_spend: Float,
        updated_at: Time
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::AdCampaignListResponse
    end

    assert_pattern do
      row => {
        id: String,
        available_budget: Float,
        clicks_count: Integer,
        created_at: Time,
        daily_budget: Float | nil,
        impressions_count: Integer,
        paused_until: Time | nil,
        platform: WhopSDK::Models::AdCampaignListResponse::Platform | nil,
        product: WhopSDK::Models::AdCampaignListResponse::Product | nil,
        purchases_count: Integer,
        remaining_balance: Float,
        return_on_ad_spend: Float,
        revenue: Float,
        status: WhopSDK::Models::AdCampaignListResponse::Status,
        target_country_codes: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        title: String,
        todays_spend: Float,
        total_credits: Float,
        total_spend: Float,
        updated_at: Time
      }
    end
  end

  def test_pause
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.pause("adcamp_xxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::AdCampaignPauseResponse
    end

    assert_pattern do
      response => {
        id: String,
        available_budget: Float,
        billing_ledger_account: WhopSDK::Models::AdCampaignPauseResponse::BillingLedgerAccount | nil,
        clicks_count: Integer,
        config: WhopSDK::Models::AdCampaignPauseResponse::Config | nil,
        created_at: Time,
        created_by_user: WhopSDK::Models::AdCampaignPauseResponse::CreatedByUser,
        daily_budget: Float | nil,
        impressions_count: Integer,
        paused_until: Time | nil,
        payment_method: WhopSDK::Models::AdCampaignPauseResponse::PaymentMethod,
        platform: WhopSDK::Models::AdCampaignPauseResponse::Platform | nil,
        product: WhopSDK::Models::AdCampaignPauseResponse::Product | nil,
        purchases_count: Integer,
        remaining_balance: Float,
        return_on_ad_spend: Float,
        revenue: Float,
        status: WhopSDK::Models::AdCampaignPauseResponse::Status,
        target_country_codes: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        title: String,
        todays_spend: Float,
        total_credits: Float,
        total_spend: Float,
        updated_at: Time
      }
    end
  end

  def test_unpause
    skip("Mock server tests are disabled")

    response = @whop.ad_campaigns.unpause("adcamp_xxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::AdCampaignUnpauseResponse
    end

    assert_pattern do
      response => {
        id: String,
        available_budget: Float,
        billing_ledger_account: WhopSDK::Models::AdCampaignUnpauseResponse::BillingLedgerAccount | nil,
        clicks_count: Integer,
        config: WhopSDK::Models::AdCampaignUnpauseResponse::Config | nil,
        created_at: Time,
        created_by_user: WhopSDK::Models::AdCampaignUnpauseResponse::CreatedByUser,
        daily_budget: Float | nil,
        impressions_count: Integer,
        paused_until: Time | nil,
        payment_method: WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod,
        platform: WhopSDK::Models::AdCampaignUnpauseResponse::Platform | nil,
        product: WhopSDK::Models::AdCampaignUnpauseResponse::Product | nil,
        purchases_count: Integer,
        remaining_balance: Float,
        return_on_ad_spend: Float,
        revenue: Float,
        status: WhopSDK::Models::AdCampaignUnpauseResponse::Status,
        target_country_codes: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        title: String,
        todays_spend: Float,
        total_credits: Float,
        total_spend: Float,
        updated_at: Time
      }
    end
  end
end
