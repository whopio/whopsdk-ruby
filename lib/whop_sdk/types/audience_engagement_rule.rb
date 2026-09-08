# frozen_string_literal: true

module Whop_sdk
  module Types
    class AudienceEngagementRule < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      discriminant :object

      member -> { Whop_sdk::Types::AudienceEngagementFacebookPageRule }, key: "FACEBOOK_PAGE"

      member -> { Whop_sdk::Types::AudienceEngagementInstagramProfileRule }, key: "INSTAGRAM_PROFILE"

      member -> { Whop_sdk::Types::AudienceEngagementLeadFormRule }, key: "LEAD_FORM"

      member -> { Whop_sdk::Types::AudienceEngagementVideoRule }, key: "VIDEO"
    end
  end
end
