# frozen_string_literal: true

module Whop_sdk
  module Types
    class Bounty < Internal::Types::Model
      field :accepted_deliverable_types, -> { Internal::Types::Array[Whop_sdk::Types::BountyAcceptedDeliverableTypesItem] }, optional: false, nullable: false

      field :accepted_submissions_count, -> { Integer }, optional: false, nullable: false

      field :accepted_submissions_limit, -> { Integer }, optional: false, nullable: false

      field :accepted_submissions_per_user_limit, -> { Integer }, optional: false, nullable: false

      field :active_proof_livestream_feeds, -> { Internal::Types::Array[Whop_sdk::Types::BountyActiveLivestreamFeed] }, optional: false, nullable: false

      field :affiliate_share_amount, -> { Integer }, optional: false, nullable: false

      field :allowed_country_codes, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :awaiting_review_submissions_count, -> { Integer }, optional: false, nullable: false

      field :budget_amount, -> { Integer }, optional: false, nullable: false

      field :business_goal_type, -> { Whop_sdk::Types::BountyBusinessGoalType }, optional: false, nullable: true

      field :cancel_requested_at, -> { String }, optional: false, nullable: true

      field :capture_spec, -> { Whop_sdk::Types::CaptureSpec }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::BountyCurrency }, optional: false, nullable: false

      field :denied_submissions_count, -> { Integer }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: false

      field :discussion_experience_id, -> { String }, optional: false, nullable: true

      field :discussion_feed_id, -> { String }, optional: false, nullable: true

      field :discussion_post_id, -> { String }, optional: false, nullable: true

      field :experience_id, -> { String }, optional: false, nullable: true

      field :funding_account, -> { Whop_sdk::Types::AccountSummary }, optional: false, nullable: true

      field :gross_paid_out_amount, -> { Integer }, optional: false, nullable: false

      field :gross_reward_amount, -> { Integer }, optional: false, nullable: false

      field :hosting_account, -> { Whop_sdk::Types::StorefrontAccount }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :min_total_verified_duration_seconds, -> { Integer }, optional: false, nullable: true

      field :net_reward_amount, -> { Integer }, optional: false, nullable: false

      field :poster, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: false

      field :scheduled_frequency, -> { Whop_sdk::Types::BountyScheduledFrequency }, optional: false, nullable: true

      field :scheduled_publish_at, -> { String }, optional: false, nullable: true

      field :spots_remaining, -> { Integer }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::BountyStatus }, optional: false, nullable: false

      field :submissions_closed_at, -> { String }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: false

      field :unresolved_submissions_count, -> { Integer }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :viewer_accepted_submissions_count, -> { Integer }, optional: false, nullable: false
    end
  end
end
