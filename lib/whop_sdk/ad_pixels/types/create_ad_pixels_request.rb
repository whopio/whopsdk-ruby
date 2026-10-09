# frozen_string_literal: true

module Whop_sdk
  module AdPixels
    module Types
      class CreateAdPixelsRequest < Internal::Types::Model
        field :access_token, -> { String }, optional: false, nullable: false

        field :account_id, -> { String }, optional: false, nullable: false

        field :external_id, -> { String }, optional: false, nullable: false

        field :platform, -> { Whop_sdk::AdPixels::Types::CreateAdPixelsRequestPlatform }, optional: false, nullable: false
      end
    end
  end
end
