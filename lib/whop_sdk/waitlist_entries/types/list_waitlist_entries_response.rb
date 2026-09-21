# frozen_string_literal: true

module Whop_sdk
  module WaitlistEntries
    module Types
      class ListWaitlistEntriesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::WaitlistEntry] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::WaitlistEntries::Types::ListWaitlistEntriesResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
