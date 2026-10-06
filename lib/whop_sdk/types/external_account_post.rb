# frozen_string_literal: true

module Whop_sdk
  module Types
    class ExternalAccountPost < Internal::Types::Model
      field :call_to_action, -> { Whop_sdk::Types::ExternalAccountPostCallToAction }, optional: false, nullable: true

      field :caption, -> { String }, optional: false, nullable: true

      field :destination_url, -> { String }, optional: false, nullable: true

      field :embed_url, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :media_url, -> { String }, optional: false, nullable: true

      field :restrictions, -> { Internal::Types::Array[Whop_sdk::Types::ExternalAccountPostRestrictionsItem] }, optional: false, nullable: false

      field :thumbnail_url, -> { String }, optional: false, nullable: true

      field :video_id, -> { String }, optional: false, nullable: true
    end
  end
end
