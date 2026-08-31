# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::BountiesTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @whop.bounties.create(
        description: "Record one continuous pass of a full interior detail, dash to trunk, on a customer vehicle.",
        gross_reward_amount: 40,
        title: "Record interior detailing passes"
      )

    assert_pattern do
      response => WhopSDK::Models::BountyCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        accepted_deliverable_types: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::BountyCreateResponse::AcceptedDeliverableType]),
        accepted_submissions_count: Integer,
        accepted_submissions_limit: Integer,
        accepted_submissions_per_user_limit: Integer,
        active_proof_livestream_feeds: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::BountyCreateResponse::ActiveProofLivestreamFeed]),
        affiliate_share_amount: Float,
        allowed_country_codes: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        awaiting_review_submissions_count: Integer,
        budget_amount: Float,
        business_goal_type: WhopSDK::Models::BountyCreateResponse::BusinessGoalType | nil,
        cancel_requested_at: String | nil,
        capture_spec: WhopSDK::Models::BountyCreateResponse::CaptureSpec | nil,
        created_at: String,
        currency: WhopSDK::Models::BountyCreateResponse::Currency,
        denied_submissions_count: Integer,
        description: String,
        discussion_experience_id: String | nil,
        discussion_feed_id: String | nil,
        discussion_post_id: String | nil,
        experience_id: String | nil,
        funding_account: WhopSDK::Models::BountyCreateResponse::FundingAccount | nil,
        gross_paid_out_amount: Float,
        gross_reward_amount: Float,
        hosting_account: WhopSDK::Models::BountyCreateResponse::HostingAccount | nil,
        min_total_verified_duration_seconds: Integer | nil,
        net_reward_amount: Float,
        poster: WhopSDK::Models::BountyCreateResponse::Poster,
        scheduled_frequency: WhopSDK::Models::BountyCreateResponse::ScheduledFrequency | nil,
        scheduled_publish_at: String | nil,
        spots_remaining: Integer,
        status: WhopSDK::Models::BountyCreateResponse::Status,
        submissions_closed_at: String | nil,
        title: String,
        unresolved_submissions_count: Integer,
        updated_at: String,
        viewer_accepted_submissions_count: Integer
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.bounties.retrieve("id")

    assert_pattern do
      response => WhopSDK::Models::BountyRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        accepted_deliverable_types: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::BountyRetrieveResponse::AcceptedDeliverableType]),
        accepted_submissions_count: Integer,
        accepted_submissions_limit: Integer,
        accepted_submissions_per_user_limit: Integer,
        active_proof_livestream_feeds: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::BountyRetrieveResponse::ActiveProofLivestreamFeed]),
        affiliate_share_amount: Float,
        allowed_country_codes: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        awaiting_review_submissions_count: Integer,
        budget_amount: Float,
        business_goal_type: WhopSDK::Models::BountyRetrieveResponse::BusinessGoalType | nil,
        cancel_requested_at: String | nil,
        capture_spec: WhopSDK::Models::BountyRetrieveResponse::CaptureSpec | nil,
        created_at: String,
        currency: WhopSDK::Models::BountyRetrieveResponse::Currency,
        denied_submissions_count: Integer,
        description: String,
        discussion_experience_id: String | nil,
        discussion_feed_id: String | nil,
        discussion_post_id: String | nil,
        experience_id: String | nil,
        funding_account: WhopSDK::Models::BountyRetrieveResponse::FundingAccount | nil,
        gross_paid_out_amount: Float,
        gross_reward_amount: Float,
        hosting_account: WhopSDK::Models::BountyRetrieveResponse::HostingAccount | nil,
        min_total_verified_duration_seconds: Integer | nil,
        net_reward_amount: Float,
        poster: WhopSDK::Models::BountyRetrieveResponse::Poster,
        scheduled_frequency: WhopSDK::Models::BountyRetrieveResponse::ScheduledFrequency | nil,
        scheduled_publish_at: String | nil,
        spots_remaining: Integer,
        status: WhopSDK::Models::BountyRetrieveResponse::Status,
        submissions_closed_at: String | nil,
        title: String,
        unresolved_submissions_count: Integer,
        updated_at: String,
        viewer_accepted_submissions_count: Integer
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.bounties.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::BountyListResponse
    end

    assert_pattern do
      row => {
        id: String,
        accepted_deliverable_types: ^(WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::BountyListResponse::AcceptedDeliverableType]),
        accepted_submissions_count: Integer,
        accepted_submissions_limit: Integer,
        accepted_submissions_per_user_limit: Integer,
        affiliate_share_amount: Float,
        allowed_country_codes: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        budget_amount: Float,
        business_goal_type: WhopSDK::Models::BountyListResponse::BusinessGoalType | nil,
        cancel_requested_at: String | nil,
        created_at: String,
        currency: String,
        description: String,
        discussion_experience_id: String | nil,
        discussion_feed_id: String | nil,
        discussion_post_id: String | nil,
        experience_id: String | nil,
        funding_account: WhopSDK::Models::BountyListResponse::FundingAccount | nil,
        gross_paid_out_amount: Float,
        gross_reward_amount: Float,
        hosting_account: WhopSDK::Models::BountyListResponse::HostingAccount | nil,
        min_total_verified_duration_seconds: Integer | nil,
        net_reward_amount: Float,
        poster: WhopSDK::Models::BountyListResponse::Poster,
        scheduled_frequency: WhopSDK::Models::BountyListResponse::ScheduledFrequency | nil,
        scheduled_publish_at: String | nil,
        spots_remaining: Integer,
        status: WhopSDK::Models::BountyListResponse::Status,
        submissions_closed_at: String | nil,
        title: String,
        unresolved_submissions_count: Integer,
        updated_at: String,
        viewer_accepted_submissions_count: Integer
      }
    end
  end
end
