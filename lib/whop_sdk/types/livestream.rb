# frozen_string_literal: true

module Whop_sdk
  module Types
    class Livestream < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :ended_at, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :pinned_at, -> { String }, optional: false, nullable: true

      field :recording_started_at, -> { String }, optional: false, nullable: true

      field :recording_status, -> { Whop_sdk::Types::LivestreamRecordingStatus }, optional: false, nullable: true

      field :recording_url, -> { String }, optional: false, nullable: true

      field :started_at, -> { String }, optional: false, nullable: true

      field :thumbnail_url, -> { String }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
