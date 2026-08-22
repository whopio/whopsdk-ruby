# frozen_string_literal: true

module Whop_sdk
  module Types
    class MediaAsset < Internal::Types::Model
      field :amount_charged, -> { Integer }, optional: false, nullable: true

      field :completed_at, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { String }, optional: false, nullable: false

      field :error_message, -> { String }, optional: false, nullable: true

      field :file, -> { Whop_sdk::Types::MediaAssetFile }, optional: false, nullable: true

      field :generation, -> { Whop_sdk::Types::MediaAssetGeneration }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :media_type, -> { Whop_sdk::Types::MediaAssetMediaType }, optional: false, nullable: false

      field :source, -> { Whop_sdk::Types::MediaAssetSource }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::MediaAssetStatus }, optional: false, nullable: false
    end
  end
end
