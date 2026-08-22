# frozen_string_literal: true

module Whop_sdk
  module Types
    class PublicBountySubmission < Internal::Types::Model
      field :bounty_id, -> { String }, optional: false, nullable: false

      field :claimed_at, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :denial_reason, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :latest_proof_livestream_feed, -> { Whop_sdk::Types::BountySubmissionLivestreamFeed }, optional: false, nullable: true

      field :resolved_at, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::PublicBountySubmissionStatus }, optional: false, nullable: false

      field :submitted_at, -> { String }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false

      field :worker, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: false
    end
  end
end
