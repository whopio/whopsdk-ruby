# frozen_string_literal: true

module Whop_sdk
  module WaitlistEntries
    module Types
      class ApproveAllWaitlistEntriesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :plan_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
