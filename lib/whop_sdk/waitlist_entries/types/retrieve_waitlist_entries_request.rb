# frozen_string_literal: true

module Whop_sdk
  module WaitlistEntries
    module Types
      class RetrieveWaitlistEntriesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
