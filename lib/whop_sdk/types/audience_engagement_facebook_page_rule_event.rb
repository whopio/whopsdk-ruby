# frozen_string_literal: true

module Whop_sdk
  module Types
    module AudienceEngagementFacebookPageRuleEvent
      extend Whop_sdk::Internal::Types::Enum

      ENGAGED = "engaged"
      VISITED = "visited"
      LIKED = "liked"
      MESSAGED = "messaged"
      CTA_CLICKED = "cta_clicked"
      SAVED = "saved"
      POST_INTERACTION = "post_interaction"
    end
  end
end
