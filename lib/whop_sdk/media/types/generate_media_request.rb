# frozen_string_literal: true

module Whop_sdk
  module Media
    module Types
      class GenerateMediaRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :duration_seconds, -> { Integer }, optional: true, nullable: false

        field :prompt, -> { String }, optional: false, nullable: false

        field :reference_media, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :resolution, -> { Whop_sdk::Media::Types::GenerateMediaRequestResolution }, optional: true, nullable: false

        field :type, -> { Whop_sdk::Media::Types::GenerateMediaRequestType }, optional: false, nullable: false
      end
    end
  end
end
