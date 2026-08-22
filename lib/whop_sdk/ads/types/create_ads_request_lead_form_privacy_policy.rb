# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      # Your privacy policy. url is required by the ad platform.
      class CreateAdsRequestLeadFormPrivacyPolicy < Internal::Types::Model
        field :link_text, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false
      end
    end
  end
end
