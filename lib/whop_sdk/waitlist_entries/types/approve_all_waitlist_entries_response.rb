# frozen_string_literal: true

module Whop_sdk
  module WaitlistEntries
    module Types
      class ApproveAllWaitlistEntriesResponse < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :plan_id, -> { String }, optional: false, nullable: true

        field :queued, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
