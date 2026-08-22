# frozen_string_literal: true

module Whop_sdk
  module Types
    module SocialAccountPostRestrictionsItem
      extend Whop_sdk::Internal::Types::Enum

      LEAD_FORM_INELIGIBLE = "lead_form_ineligible"
      PROMOTION_INELIGIBLE = "promotion_ineligible"
      COPYRIGHTED_MUSIC = "copyrighted_music"
      MESSENGER_DESTINATION = "messenger_destination"
      INSTAGRAM_DESTINATION = "instagram_destination"
      WHATSAPP_DESTINATION = "whatsapp_destination"
    end
  end
end
