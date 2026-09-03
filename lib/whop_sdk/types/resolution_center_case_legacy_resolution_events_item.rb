# frozen_string_literal: true

module Whop_sdk
  module Types
    # A resolution event is a message or action within a resolution case, such as a response, escalation, or status
    # change.
    class ResolutionCenterCaseLegacyResolutionEventsItem < Internal::Types::Model
      field :action, -> { Whop_sdk::Types::ResolutionCenterCaseActions }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :details, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :reporter_type, -> { Whop_sdk::Types::ResolutionCenterCaseReporters }, optional: false, nullable: false
    end
  end
end
