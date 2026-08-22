# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      module UpdateAdGroupsRequestConversionLocation
        extend Whop_sdk::Internal::Types::Enum

        WEBSITE = "website"
        PROFILE = "profile"
        INSTAGRAM_AND_FACEBOOK = "instagram_and_facebook"
        INSTAGRAM_PROFILE = "instagram_profile"
        MESSAGING = "messaging"
        ON_AD = "on_ad"
        INSTANT_FORMS = "instant_forms"
        INSTANT_FORMS_AND_MESSENGER = "instant_forms_and_messenger"
        WEBSITE_AND_INSTANT_FORMS = "website_and_instant_forms"
      end
    end
  end
end
