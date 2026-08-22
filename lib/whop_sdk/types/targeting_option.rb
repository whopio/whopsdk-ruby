# frozen_string_literal: true

module Whop_sdk
  module Types
    # One result from the ad-group targeting-options search. `type` picks the shape: detailed-targeting taxonomy options
    # carry the ad platform's `id`, languages carry an ISO 639 `code`, and locations carry the platform `key` plus
    # geographic context.
    class TargetingOption < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      discriminant :type

      member -> { Whop_sdk::Types::DetailedTargetingOption }, key: "BEHAVIORS"

      member -> { Whop_sdk::Types::DetailedTargetingOption }, key: "EDUCATION_MAJORS"

      member -> { Whop_sdk::Types::DetailedTargetingOption }, key: "EDUCATION_SCHOOLS"

      member -> { Whop_sdk::Types::DetailedTargetingOption }, key: "FAMILY_STATUSES"

      member -> { Whop_sdk::Types::DetailedTargetingOption }, key: "INCOME"

      member -> { Whop_sdk::Types::DetailedTargetingOption }, key: "INDUSTRIES"

      member -> { Whop_sdk::Types::DetailedTargetingOption }, key: "INTERESTS"

      member -> { Whop_sdk::Types::LanguageTargetingOption }, key: "LANGUAGES"

      member -> { Whop_sdk::Types::DetailedTargetingOption }, key: "LIFE_EVENTS"

      member -> { Whop_sdk::Types::LocationTargetingOption }, key: "LOCATIONS"

      member -> { Whop_sdk::Types::DetailedTargetingOption }, key: "WORK_EMPLOYERS"

      member -> { Whop_sdk::Types::DetailedTargetingOption }, key: "WORK_POSITIONS"
    end
  end
end
