# frozen_string_literal: true

module Whop_sdk
  module Types
    class UserPreferences < Internal::Types::Model
      field :bounty_worker_onboarding_dismissed, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :investigation_enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :terms_accepted, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :terms_accepted_at, -> { String }, optional: false, nullable: true
    end
  end
end
