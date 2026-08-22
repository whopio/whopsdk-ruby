# frozen_string_literal: true

module Whop_sdk
  module Types
    class BountySubmission < Internal::Types::Model
      field :bounty_id, -> { String }, optional: false, nullable: false

      field :capture_clips, -> { Internal::Types::Array[Whop_sdk::Types::BountyCaptureClip] }, optional: false, nullable: true

      field :capture_filename, -> { String }, optional: false, nullable: true

      field :captured_clip_count, -> { Integer }, optional: false, nullable: false

      field :captured_duration_seconds, -> { Integer }, optional: false, nullable: false

      field :city, -> { String }, optional: false, nullable: true

      field :claimed_at, -> { String }, optional: false, nullable: true

      field :content, -> { String }, optional: false, nullable: true

      field :country, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :deliverable_type, -> { Whop_sdk::Types::BountySubmissionDeliverableType }, optional: false, nullable: true

      field :deliverable_urls, -> { Internal::Types::Array[String] }, optional: false, nullable: true

      field :denial_reason, -> { String }, optional: false, nullable: true

      field :device, -> { String }, optional: false, nullable: true

      field :files, -> { Internal::Types::Array[Whop_sdk::Types::BountySubmissionFile] }, optional: false, nullable: false

      field :fov, -> { Integer }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :latest_proof_livestream_feed, -> { Whop_sdk::Types::BountySubmissionLivestreamFeed }, optional: false, nullable: true

      field :operator, -> { String }, optional: false, nullable: true

      field :resolved_at, -> { String }, optional: false, nullable: true

      field :site, -> { String }, optional: false, nullable: true

      field :station, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::BountySubmissionStatus }, optional: false, nullable: true

      field :submitted_at, -> { String }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false

      field :worker, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: false
    end
  end
end
