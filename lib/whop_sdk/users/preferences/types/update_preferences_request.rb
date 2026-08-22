# frozen_string_literal: true

module Whop_sdk
  module Users
    module Preferences
      module Types
        class UpdatePreferencesRequest < Internal::Types::Model
          field :bounty_worker_onboarding_dismissed, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :investigation_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :terms_accepted, -> { Internal::Types::Boolean }, optional: true, nullable: false
        end
      end
    end
  end
end
