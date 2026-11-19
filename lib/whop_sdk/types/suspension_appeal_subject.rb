# frozen_string_literal: true

module Whop_sdk
  module Types
    class SuspensionAppealSubject < Internal::Types::Model
      field :appeal, -> { Whop_sdk::Types::SuspensionAppeal }, optional: false, nullable: true

      field :appeal_deadline, -> { String }, optional: false, nullable: true

      field :display_name, -> { String }, optional: false, nullable: true

      field :eligible, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :funds_explanation, -> { String }, optional: false, nullable: true

      field :funds_release_at, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :ineligible_reason, -> { Whop_sdk::Types::SuspensionAppealSubjectIneligibleReason }, optional: false, nullable: true

      field :platform_name, -> { String }, optional: false, nullable: true

      field :suspended_at, -> { String }, optional: false, nullable: true

      field :suspension_code, -> { Whop_sdk::Types::SuspensionAppealSubjectSuspensionCode }, optional: false, nullable: true

      field :suspension_country, -> { String }, optional: false, nullable: true

      field :suspension_explanation, -> { String }, optional: false, nullable: true

      field :suspension_reason, -> { String }, optional: false, nullable: true
    end
  end
end
