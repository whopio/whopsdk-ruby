# frozen_string_literal: true

module Whop_sdk
  module Bounties
    module Types
      class CreateBountiesRequest < Internal::Types::Model
        field :accepted_submissions_limit, -> { Integer }, optional: true, nullable: false

        field :accepted_submissions_per_user_limit, -> { Integer }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :allowed_country_codes, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :business_goal_type, -> { Whop_sdk::Bounties::Types::CreateBountiesRequestBusinessGoalType }, optional: true, nullable: false

        field :capture_spec, -> { Whop_sdk::Bounties::Types::CreateBountiesRequestCaptureSpec }, optional: true, nullable: false

        field :description, -> { String }, optional: false, nullable: false

        field :experience_id, -> { String }, optional: true, nullable: false

        field :frequency, -> { Whop_sdk::Bounties::Types::CreateBountiesRequestFrequency }, optional: true, nullable: false

        field :gross_reward_amount, -> { Integer }, optional: false, nullable: false

        field :publish_at, -> { String }, optional: true, nullable: false

        field :publish_at_timezone, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: false, nullable: false
      end
    end
  end
end
