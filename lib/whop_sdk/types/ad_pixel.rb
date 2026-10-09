# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdPixel < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :error_message, -> { String }, optional: false, nullable: true

      field :external_id, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :platform, -> { Whop_sdk::Types::AdPixelPlatform }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::AdPixelStatus }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
