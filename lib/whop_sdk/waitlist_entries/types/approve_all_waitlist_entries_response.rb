# frozen_string_literal: true

module Whop_sdk
  module WaitlistEntries
    module Types
      class ApproveAllWaitlistEntriesResponse < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :queued, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :variant_id, -> { String }, optional: false, nullable: true
      end
    end
  end
end
