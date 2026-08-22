# frozen_string_literal: true

module Whop_sdk
  module Types
    class BountySubmissionLivestreamFeed < Internal::Types::Model
      field :ended_at, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :recording_status, -> { Whop_sdk::Types::BountySubmissionLivestreamFeedRecordingStatus }, optional: false, nullable: true

      field :recording_url, -> { String }, optional: false, nullable: true

      field :started_at, -> { String }, optional: false, nullable: true

      field :thumbnail_url, -> { String }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
