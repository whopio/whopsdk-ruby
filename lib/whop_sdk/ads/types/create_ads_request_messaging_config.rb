# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      # Click-to-message welcome copy: the greeting (message) and the ice-breaker prompt (keyword).
      class CreateAdsRequestMessagingConfig < Internal::Types::Model
        field :keyword, -> { String }, optional: true, nullable: false

        field :message, -> { String }, optional: true, nullable: false
      end
    end
  end
end
