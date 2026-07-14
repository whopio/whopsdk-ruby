# frozen_string_literal: true

require_relative "../../test_helper"

class WhopSDK::Test::Resources::Workforce::BountiesTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.workforce.bounties.retrieve("id")

    assert_pattern do
      response => WhopSDK::Workforce::WorkforceBounty
    end

    assert_pattern do
      response => {
        id: String,
        accepted_submissions_count: Integer,
        accepted_submissions_limit: Integer,
        allowed_country_codes: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        budget_amount: Float,
        business_goal_type: WhopSDK::Workforce::WorkforceBounty::BusinessGoalType | nil,
        created_at: String,
        currency: String,
        description: String,
        experience_id: String | nil,
        funding_account: WhopSDK::Workforce::WorkforceBounty::FundingAccount | nil,
        gross_paid_out_amount: Float,
        gross_reward_amount: Float,
        poster: WhopSDK::Workforce::WorkforceBounty::Poster,
        scheduled_frequency: WhopSDK::Workforce::WorkforceBounty::ScheduledFrequency | nil,
        scheduled_publish_at: String | nil,
        spots_remaining: Integer,
        status: WhopSDK::Workforce::WorkforceBounty::Status,
        submissions_closed_at: String | nil,
        title: String,
        unresolved_submissions_count: Integer,
        updated_at: String
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.workforce.bounties.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Workforce::WorkforceBountyListItem
    end

    assert_pattern do
      row => {
        id: String,
        accepted_submissions_count: Integer,
        accepted_submissions_limit: Integer,
        allowed_country_codes: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        budget_amount: Float,
        business_goal_type: WhopSDK::Workforce::WorkforceBountyListItem::BusinessGoalType | nil,
        created_at: String,
        currency: String,
        experience_id: String | nil,
        funding_account: WhopSDK::Workforce::WorkforceBountyListItem::FundingAccount | nil,
        gross_paid_out_amount: Float,
        gross_reward_amount: Float,
        poster: WhopSDK::Workforce::WorkforceBountyListItem::Poster,
        scheduled_frequency: WhopSDK::Workforce::WorkforceBountyListItem::ScheduledFrequency | nil,
        scheduled_publish_at: String | nil,
        spots_remaining: Integer,
        status: WhopSDK::Workforce::WorkforceBountyListItem::Status,
        submissions_closed_at: String | nil,
        title: String,
        unresolved_submissions_count: Integer,
        updated_at: String
      }
    end
  end
end
